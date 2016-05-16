
var SYUI = {};  // SYUI对象

/*
 * @method validate
 * @description 验证组件
 */
SYUI.validate = (function( view, options ) {
	var validateRule = function() {
		var message = {
	        required: "该项必填",
	        maxLength: "不能超过 {length} 个字符(一个汉字为两个字符)",
	        minLength: "至少为 {length} 个字符(一个汉字为两个字符)",
	        length: "长度必须是 {length} 位",
	        range: "数字必须在 {min} 和 {max} 之间",
	        rangeLength: "长度必须在 {min} 位和 {max} 位之间",
	        rangeChecked: "至少 {min} 项, 至多 {max} 项",
	
	        zipCode: "请输入正确邮政编码",
	        number: "请输入数字格式"
		};
	    var rules = {
	        required: function( val ) {
	            val = ( typeof val === "number" && val === 0 ) ? "" : val + "";
	            return val.replace(/(^[\s]+)|([\s]+$)/gi,'').length > 0;
	        },
	        length: function( val, len ) {
	            if ( typeof len === "undefined" || !len ) return;

	            if ( len.length === 1 ) return val.length === len[ 0 ];	// 长度必须是N位(不计算汉字,特殊字符)
	            if ( len.length === 2 ) {
	                if ( len[ 0 ] === -1 ) {
	                    return !( getStrLength( val ) > len[ 1 ] );	// 表示最多只能输入N个字符
	                }
	                if ( len[ 1 ] === -1 ) {
	                    return !( getStrLength( val ) < len[ 0 ] );	// 表示至少输入N个字符
	                }
	            }
	        },
	        maxLength: function( val, len ) {
	            return this.length( val, len );
	        },
	        minLength: function( val, len ) {
	            return this.length( val, len );
	        },

	        /*
	         * @method range,rangeLength
	         * @description 匹配一个范围内 
	         * ( len[0] === "." 是小数点规则, 反之正常规则 )
	         * ( 小数字规则, [1]表示前N位,[2]表示后N位 )
	         * 
	         * @param {String} val     输入的字符
	         * @param {Array} len      规则,例如: [0,1],[".",0,1]
	         * @return {Boolean}
	         * 
	         */
	        range:function( val, len ){
	            val = Number( val );
	            if ( len[0] === "." ) {
	                // 有小数点
	            } else {
	                return val >= len[ 0 ] && val <= len[ 1 ];
	            }
	        },
	        rangeLength: function( val, len ) {
	            if ( len[0] === "." ) {
	                // 有小数点
	            } else {
	                return val.length >= len[ 0 ] && val.length <= len[ 1 ];
	            }
	        },
	        rangeChecked: function( val, len ) {
	        	return Number( val ) >= len[ 0 ] && Number( val ) <= len[ 1 ];
	        },
	
	        zipCode: function( val ) {
	            if( val === '000000' ) return false;
	            return /^[0-9]{6}$/.test( val );
	        },
	        number: function( val ) {
	            return /^\d+$/.test( val );
	        }
	    };
	
	    // 统计字符串长度
	    var getStrLength = function( str ) {
	        str = str || "";
	        var num = str.length;
	        [].slice.call( str ).forEach(function( elem ) {
	            if( elem.charCodeAt() < 27 || elem.charCodeAt() > 126 ) { // 双字节字符 或 [^\x00-\xff]
	                num++;
	            }
	        });
	        return num;
	    };
	
	   	/*
	   	 * @description 传递参数,进行验证匹配,失败后返回对象
	   	 * 非必输：no: true, 必输没有no属性
	   	 * 当前输入验证成功返回{},验证失败 msg = { state: false, msg:"error", no: true }
	   	 * 
	   	 * @param {String} val         输入的字符串
	   	 * @param {String} pattern     验证规则名称
	   	 * @param {Object} config      默认验证规则配置
	   	 * @return {Object}            格式化后的对象
	   	 * 
	   	 */
		return (function( val, pattern, config ) {
	        var err = {},
	            arr = pattern.trim() && pattern.trim().split(/\s+/) || [],
	            result;
	
	        if ( !val && arr.indexOf( "required" ) === -1 ) return err;
	        for ( var i = 0, l = arr.length; i < l; i++ ) {
	            if ( arr[ i ] in rules ) {
	                result = rules[ arr[ i ] ]( val, config[ "length" ] );  // 默认获取length规则
	                if ( result ) err = {};
	                if ( !result ) {
	                    // 验证失败组装对象
	                    err[ "msg" ] = message[ arr[ i ] ];
	                    err[ "state" ] = false;
	                    break;
	                }
	            }
	        }
	        if ( arr.indexOf( "required" ) === -1 ) err[ "no" ] = true; // 非必输加一个标示
	        return err;
	    });
	}();

    var instance;   			// 只有一份实例
    var result = { no: {} };    // 存放验证错误的信息
    var single = function( view, options ) {
        if ( !instance ) instance = new Component( view, options );
        return instance;
    };

    var Component = function( view, options ) {
        this.view = view || {};
        this.options = options || {};
        this.init();
    };

    Component.prototype = {
        construtor: Component,
        init: function() {
        	console.log("初始化validate/component");
            this.register();
        },
        register: function( element ) {
            var dom = this.dom = $( element || this.view.el );

            // 初始化配置信息
            var defaultConfig = function( val ) {
                var obj = {
                    length: [],
                    position: "bottom",
                    val: "",
                    auto: false,
                    num: 5,
                    ajax: "allAjaxCallBack",
                    multiple: false
                };
                val && $.extend( obj, JSON.parse( val ) );
                return obj;
            };

            // 检测单选框,多选框是否选中
            var selectRadioBoxFun = function( evt ) {
                var flag = 0, tempInput, i = 0, l = 0;
                tempInput = evt.querySelectorAll( "input" );
                for ( i, l = tempInput.length; i < l; i++ ) {
                	if ( tempInput[ i ].name.indexOf( "SYUI-select" ) > -1 ) {
                		flag = tempInput[ i ].dataset.key && ( tempInput[ i ].dataset.key.split( "|" ).length ) || 0;
                	} else {
                		flag += tempInput[ i ].checked | 0;
                	}
                }
                return flag;
            };

            // 事件回调
            var bindEvent = function( e ) {
                e.stopPropagation();
                var evt = e.currentTarget || e.target,
                    data = evt.dataset,
                    re,
                    config = defaultConfig( data[ "config" ] );

                // 失去焦点 : 单选框,多选框( 必须是.SYUI-radio ) || 点击 label元素
                if ( e.type === "focusout" && ( evt.classList.contains( "SYUI-radio" ) || evt.classList.contains( "SYUI-checkbox" ) || evt.classList.contains( "SYUI-select" ) ) || 
                	 e.type === "click" && e.target.nodeName === "INPUT" ) {
                    evt.value = selectRadioBoxFun( evt );
                }
                if ( $( evt ).is( ":hidden" ) ) return;
                re = validateRule( evt.value, data[ "pattern" ], config );
                // 获取焦点、输入、失去, 执行错误渲染并加入错误列表
                if ( re.state == false ) {
                    result.no[ evt.name ] = [ evt, re.msg ];
                } else {
                    delete result.no[ evt.name ];
                }

                this.bindError( evt, re, config );
            }.bind(this);

            dom.on( "focus input blur", "input[data-pattern]", bindEvent )
                .on( "blur click", ".SYUI-radio[data-pattern], .SYUI-checkbox[data-pattern], .SYUI-select[data-pattern]", bindEvent );
            dom = null;
        },

        /*
         * @method messageFormat
         * @description 替换带{xx}的内容
         * 
         * @param {String} str		带{xx}的字段
         * @param {String} value	替换{xx}的字段
         */
        messageFormat: function( str, value ) {
            if ( !str ) return;
            ( typeof value === "string" || typeof value === "number" ) && ( value = [ value + ""] );
            var strArray = str.split( /{\w+}/ ), outString = "";
            if ( strArray.length < 2 ) return str;
            strArray.forEach(function( elem, index ) {
                outString += elem;
                if ( typeof value[ index ] !== "undefined" ) {
                    outString += value[ index ];
                }
            });
            return outString;
        },

        /*
         * @method bindError
         * @description 显示错误信息
         * 
         * @param {Object} dom     原生dom对象
         * @param {Object} err     错误信息 {state: false, msg: "error"}
         * @param {Object} config  验证规则配置 {position:"bottom", length:[5],....}
         * 
         */
        bindError: function( dom, err, config ) {
            var dom = dom, err = err, config = config || {},
                position = config[ "position" ] || "bottom",
                pageXY = $( dom ).position(),   //getBoundingClientRect()
                x, y, z, divMsg, filterArr;

            if( !dom || !err ) return;
            divMsg = $( dom ).siblings( '#SYUI-validateMsg_' + ( dom.name || dom.getAttribute("name") ) );
            if ( divMsg.length === 0 ) {
                divMsg = $( '<div class="SYUI-validateMsgDiv" id="SYUI-validateMsg_' + ( dom.name || dom.getAttribute("name") ) + '" ></div>' ).appendTo( $( dom ).parent() );
            }
            dom.classList.add( "SYUI-validateError" );
            if ( err.state != false ) {
                divMsg.html( "ok" ).hide();
                dom.classList.remove( "SYUI-validateError" );
                return;
            }

            // 过滤length的值,把小于0的剔除掉,为了匹配{xx}字符显示
            filterArr = config[ "length" ] && config[ "length" ].filter(function( val ) {
                return val > -1;
            }) || [];
            divMsg.css( "display", "" ).html( this.messageFormat( err.msg, filterArr ) );

            switch ( position ) {
                case "top":
                    x = "left"; y = "top"; z = -divMsg[ 0 ][ "offsetHeight" ]; break;
                case "right":
                    x = "top"; y = "left"; z = dom[ "offsetWidth" ]; break;
                case "bottom":
                    x = "left"; y = "top"; z = dom[ "offsetHeight" ]; break;
            }
            divMsg.css( x, pageXY[ x ] + "px" ).css( y, pageXY[ y ] + z + "px" );
        },
        returnValue: function() {
            var num = 0;
            $( "input[data-pattern], .SYUI-radio[data-pattern], .SYUI-checkbox[data-pattern], .SYUI-select[data-pattern]", this.dom ).blur();
            for ( var i in result.no ) num++;
            return num;
        }
    };

    return single;

})();


/*
 * @method selectRadioBox
 * @description 单选框, 多选框, 下拉框组件
 */
SYUI.selectRadioBox = (function( view, options ) {
    var instance =  null;
    var single = function( view, options ) {
        if ( !instance ) instance = new Component( view, options );
        return instance;
    };

    var Component = function( view, options ) {
        this.view = view || {};
        this.options = options || {};
        this.init();
    };

    Component.prototype = {
        construtor: Component,
        init: function() {
            console.log("初始化selectRadioBox/component");
            this.register();
            this.dropBox().render();
        },
        dropBox: function() {
        	// 设置显示个数
			var setNum = function( dom, n ) {
				if ( !dom || !n ) return;
				var ul = dom.querySelector( "ul.menu" ),
					li = ul.querySelectorAll( "li" ),
					height = parseInt( getComputedStyle( li[0], null ).height );
					
				ul.style.height = ( ( n * height > li.length * height ) ? li.length * height : n * height ) + "px";
				return this.dropBox();
			}.bind( this );
			
			// 设置默认值
			var defaultValue = function( dom, val ) {
				if ( !dom || !val ) return;
				var ul = dom.querySelector( "ul.menu" ),
					li = ul.querySelectorAll( "li" ),
					input = dom.querySelector( "h2.title > input" ),
					val = val && val.split("|") || [],
					tempKey = "",
					tempVal = "";
					
				for ( var i = 0, l = val.length; i < l; i++ ) {
					for ( var j = 0, k = li.length; j < k; j++ ) {
						if ( li[ j ].dataset.value === val[ i ] ) {
							li[ j ].classList.add( "on" );
							tempVal += "," + li[ j ].innerText.trim();
							tempKey += "|" + li[ j ].dataset.value;
						}
					}
				}
				input.value = tempVal.slice(1);
				input.dataset.key = tempKey.slice(1);
				return this.dropBox();
			}.bind( this );
			
			//创建dom
			var create = function( dom, index, config ) {
				var tempDom, nodeH2, nodeInput, nodeSpan, newH2, newInput;
				
				newH2 = dom.querySelector( "h2.title" );
				// 如果不存在title,则创建
				if ( !newH2 ) {
					nodeH2 = document.createElement( "H2" ),
					nodeInput = document.createElement( "INPUT" ),
					nodeSpan = document.createElement( "SPAN" );
					
					dom.id = "SYUI-select-" + index;
					nodeH2.classList.add( "title" );
					nodeSpan.classList.add( "arrow" );
					
					nodeInput.placeholder = "请选择";
					nodeInput.type = "text";
					nodeInput.name = "SYUI-select-input-" + index;
				
					tempDom = dom.appendChild( nodeH2 );
					tempDom.appendChild( nodeInput );
					tempDom.appendChild( nodeSpan );
				} else {
					newInput = dom.querySelector( "h2.title input" );
				}

				if ( config.search ) ( nodeInput || newInput )[ "disabled" ] = false;
				if ( config.disabled || !config.search ) ( nodeInput || newInput )[ "disabled" ] = true;
				config.disabled ? ( newH2 || nodeH2 )[ "classList" ].add( "off" ) : ( newH2 || nodeH2 )[ "classList" ].remove( "off" );

				setNum( dom, config.num );
				defaultValue( dom, config.value );
			};
			
			// 渲染下拉框
			var render = function( element ) {
				var dom = this.dom, data, config, selectList;
				
				selectList = ( typeof element !== "undefined" ) ? $( element ) : dom[ 0 ].querySelectorAll( ".SYUI-select" );
				for ( var i = 0, l = selectList.length; i < l; i++ ) {
					data = selectList[ i ].dataset;
					config = {
						disabled: ( data.disabled === "true" ) ? true : false,
						search: ( data.search === "true" ) ? true : false,
						multiple: ( data.multiple === "true" ) ? true : false,
						value: data.value || "",
						num: Number( data.num ) || 5,
						position: data.position || "down",
						change: data.change || "SYUI-select-changeFun",
        				ajax: data.ajax || "SYUI-select-ajaxFun"
					};
					create( selectList[ i ], i, config );
				}
				return this.dropBox();
			}.bind( this );
			
			return {
				render: render,
				setNum: setNum,
				defaultValue: defaultValue
			};
        },
        register: function( element ) {
            var dom = this.dom = $( element || this.view.el );

            // 单选框,多选框,事件
            var radioBoxBindEvent = function( e ) {
                e.stopPropagation();
                var evt = e.target, parentDom, flag = true, cls, label;

				if ( evt.tagName !== "INPUT" ) return;
				if ( evt.type === "radio" ) {
					parentDom = $( evt ).parents( ".SYUI-radio" )[ 0 ];
					flag = true;
				}
				if ( evt.type === "checkbox" ) {
					parentDom = $( evt ).parents( ".SYUI-checkbox" )[ 0 ];
					flag = false;
				}
				cls = parentDom.classList;
   
   				// 单选
                if ( flag ) {
                	label = parentDom.querySelectorAll( "label" );
					for ( var i = 0, l = label.length; i < l; i++ ) {
	                    label[ i ].classList.remove( "active" );
	                }
				} else {
					if ( evt.parentElement.classList.contains( "active" ) ) {
						evt.parentElement.classList.remove( "active" );
						return;
					}
				}
				evt.parentElement.classList.add( "active" );
                //config[ "changeBack" ] && this.view[ config[ "changeBack" ] ].call( e, evt );  // change回调

            }.bind( this );
            
            /*
             * @method setUlState
             * @description 设置ul的状态,显示(初始化列表),影藏
             */
            var setUlState = function( uldom, state ) {
            	if ( !uldom ) return;
            	var li;
            	switch( state ) {
            		case 0:
            			li = uldom.querySelectorAll( "li" );
            			uldom.classList.add( "on" );
            			for ( var i = 0, l = li.length; i < l; i++ ) {
            				li[ i ].style.display = "";
            			}
            			break;
            		case 1:
            			uldom.classList.remove( "on" );
            			break;
            		default:
            			return uldom.classList.contains( "on" );
            	}
            };
            
            // 下拉框事件,选择点击
            var setIsMultiple = function( currentdom, dom, multiple ) {
            	var ul = currentdom.querySelector( "ul.menu" ),
            		li = ul.querySelectorAll( "li" ),
            		liTarget = dom.parentElement,
            		input = currentdom.querySelector( "h2.title > input" ),
					tempKey = input.dataset.key || "",
					tempVal = input.value;
				//单选
            	if ( !multiple ) {
            		for ( var i = 0, l = li.length; i < l; i++ ) {
            			li[ i ].classList.remove( "on" );
            		}
            		tempKey = liTarget.dataset.value + "|";
            		tempVal = dom.innerText;
            		setUlState( ul, 1 );
            	} else {
            		tempVal += liTarget.innerText.trim() + ",";
					tempKey += liTarget.dataset.value + "|";
            		if ( liTarget.classList.contains( "on" ) ) {
            			liTarget.classList.remove( "on" );
            			return;
            		}
            	}
            	liTarget.classList.add( "on" );
            	input.value = tempVal;
            	input.dataset.key = tempKey;
            };
            
            // 搜索过滤值
            var searchBindEvent = function( e ) {
            	if ( !e ) return;
            	var target = e.target || e,
            		select = $( target ).parents( ".SYUI-select" ),
            		ul = select.find( ">ul.menu" ),
            		li = ul.find( ">li" ),
            		value = target.value || "";
            		
            	setUlState( ul[ 0 ], 0 );
        		for ( var i = 0, l = li.length; i < l; i++ ) {
        			if ( !value.trim() ) {
        				li[ i ].style.display = "";
        				li[ i ].classList.remove( "on" );
        				target.dataset.key = "";
        			} else {
        				li[ i ].style.display = "none";
        				if ( li[ i ].innerText.trim().indexOf( value ) > -1 ) li[ i ].style.display = "";
        			} 
        		}
            };
            
            var selectBindEvent = function( e ) {
            	e.stopPropagation();
                var evt = e.target,
                	currentEvt = e.currentTarget,
                    data = currentEvt.dataset,
                    config = {
						disabled: ( data.disabled === "true" ) ? true : false,
						search: ( data.search === "true" ) ? true : false,
						multiple: ( data.multiple === "true" ) ? true : false,
						value: data.value || "",
						position: data.position || "down",
						change: data.change || "SYUI-select-changeFun",
        				ajax: data.ajax || "SYUI-select-ajaxFun"
					}, ulMenu;
                    if ( config.disabled ) return;
                    ulMenu = currentEvt.querySelector( "ul.menu" );
					
					if ( evt.classList.contains( "arrow" ) ) return;
                	if ( evt.tagName === "INPUT" ) {
                		if ( !evt.value.trim().length ) evt.placeholder = "请选择";
                		if ( setUlState( ulMenu ) ) {
                			setUlState( ulMenu, 1 );
                			return;
                		}
                		setUlState( ulMenu, 0 );
                		return;
                	}
                	setIsMultiple( currentEvt, evt, config.multiple );
                	 this.view[ config.change ].call( this, e, this.dropBox() );

            }.bind( this );

            dom.on( "change", ".SYUI-radio > label.btn, .SYUI-checkbox > label.btn", radioBoxBindEvent )
            	.on( "click", ".SYUI-select", selectBindEvent )
            	.on( "input", ".SYUI-select > .title input", searchBindEvent );
            dom = null;
        }
    };

    return single;
    
})();

