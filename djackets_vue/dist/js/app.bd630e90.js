(function(t){function e(e){for(var n,s,o=e[0],i=e[1],u=e[2],l=0,b=[];l<o.length;l++)s=o[l],Object.prototype.hasOwnProperty.call(r,s)&&r[s]&&b.push(r[s][0]),r[s]=0;for(n in i)Object.prototype.hasOwnProperty.call(i,n)&&(t[n]=i[n]);d&&d(e);while(b.length)b.shift()();return a.push.apply(a,u||[]),c()}function c(){for(var t,e=0;e<a.length;e++){for(var c=a[e],n=!0,s=1;s<c.length;s++){var i=c[s];0!==r[i]&&(n=!1)}n&&(a.splice(e--,1),t=o(o.s=c[0]))}return t}var n={},r={app:0},a=[];function s(t){return o.p+"js/"+({about:"about"}[t]||t)+"."+{about:"aea0332d"}[t]+".js"}function o(e){if(n[e])return n[e].exports;var c=n[e]={i:e,l:!1,exports:{}};return t[e].call(c.exports,c,c.exports,o),c.l=!0,c.exports}o.e=function(t){var e=[],c=r[t];if(0!==c)if(c)e.push(c[2]);else{var n=new Promise((function(e,n){c=r[t]=[e,n]}));e.push(c[2]=n);var a,i=document.createElement("script");i.charset="utf-8",i.timeout=120,o.nc&&i.setAttribute("nonce",o.nc),i.src=s(t);var u=new Error;a=function(e){i.onerror=i.onload=null,clearTimeout(l);var c=r[t];if(0!==c){if(c){var n=e&&("load"===e.type?"missing":e.type),a=e&&e.target&&e.target.src;u.message="Loading chunk "+t+" failed.\n("+n+": "+a+")",u.name="ChunkLoadError",u.type=n,u.request=a,c[1](u)}r[t]=void 0}};var l=setTimeout((function(){a({type:"timeout",target:i})}),12e4);i.onerror=i.onload=a,document.head.appendChild(i)}return Promise.all(e)},o.m=t,o.c=n,o.d=function(t,e,c){o.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:c})},o.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},o.t=function(t,e){if(1&e&&(t=o(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var c=Object.create(null);if(o.r(c),Object.defineProperty(c,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var n in t)o.d(c,n,function(e){return t[e]}.bind(null,n));return c},o.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return o.d(e,"a",e),e},o.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},o.p="/",o.oe=function(t){throw console.error(t),t};var i=window["webpackJsonp"]=window["webpackJsonp"]||[],u=i.push.bind(i);i.push=e,i=i.slice();for(var l=0;l<i.length;l++)e(i[l]);var d=u;a.push([0,"chunk-vendors"]),c()})({0:function(t,e,c){t.exports=c("56d7")},"0254":function(t,e,c){},"475f":function(t,e,c){},"56d7":function(t,e,c){"use strict";c.r(e);c("e260"),c("e6cf"),c("cca6"),c("a79d");var n=c("7a23"),r={id:"wrapper"},a={class:"navbar is-dark"},s={class:"navbar-brand"},o=Object(n["g"])("strong",null,"Djackets",-1),i=Object(n["g"])("span",{"aria-hidden":"true"},null,-1),u=Object(n["g"])("span",{"aria-hidden":"true"},null,-1),l=Object(n["g"])("span",{"aria-hidden":"true"},null,-1),d=Object(n["g"])("div",{class:"navbar-start"},[Object(n["g"])("div",{class:"navbar-item"},[Object(n["g"])("form",{method:"get",action:"/search"},[Object(n["g"])("div",{class:"field has-addons"},[Object(n["g"])("div",{class:"control"},[Object(n["g"])("input",{type:"text",class:"input",placeholder:"What are you looking for?",name:"query"})]),Object(n["g"])("div",{class:"control"},[Object(n["g"])("button",{class:"button is-success"},[Object(n["g"])("span",{class:"icon"},[Object(n["g"])("i",{class:"fas fa-search"})])])])])])])],-1),b={class:"navbar-end"},g=Object(n["f"])("Summer"),m=Object(n["f"])("Winter"),p={class:"navbar-item"},O={class:"buttons"},j=Object(n["f"])("My account"),h=Object(n["f"])("Log in"),f=Object(n["g"])("span",{class:"icon"},[Object(n["g"])("i",{class:"fas fa-shopping-cart"})],-1),v=Object(n["g"])("div",{class:"lds-dual-ring"},null,-1),y={class:"section"},w=Object(n["g"])("footer",{class:"footer"},[Object(n["g"])("p",{class:"has-text-centered"},"Copyright (c) 2021")],-1);function k(t,e,c,k,S,C){var x=Object(n["w"])("router-link"),T=Object(n["w"])("router-view");return Object(n["p"])(),Object(n["d"])("div",r,[Object(n["g"])("nav",a,[Object(n["g"])("div",s,[Object(n["g"])(x,{to:"/",class:"navbar-item"},{default:Object(n["C"])((function(){return[o]})),_:1}),Object(n["g"])("a",{class:"navbar-burger","aria-label":"menu","aria-expanded":"false","data-target":"navbar-menu",onClick:e[1]||(e[1]=function(t){return S.showMobileMenu=!S.showMobileMenu})},[i,u,l])]),Object(n["g"])("div",{class:["navbar-menu",{"is-active":S.showMobileMenu}],id:"navbar-menu"},[d,Object(n["g"])("div",b,[Object(n["g"])(x,{to:"/summer",class:"navbar-item"},{default:Object(n["C"])((function(){return[g]})),_:1}),Object(n["g"])(x,{to:"/winter",class:"navbar-item"},{default:Object(n["C"])((function(){return[m]})),_:1}),Object(n["g"])("div",p,[Object(n["g"])("div",O,[t.$store.state.isAuthenticated?(Object(n["p"])(),Object(n["d"])(x,{key:0,to:"/my-account",class:"button is-light"},{default:Object(n["C"])((function(){return[j]})),_:1})):(Object(n["p"])(),Object(n["d"])(x,{key:1,to:"/log-in",class:"button is-light"},{default:Object(n["C"])((function(){return[h]})),_:1})),Object(n["g"])(x,{to:"/cart",class:"button is-success"},{default:Object(n["C"])((function(){return[f,Object(n["g"])("span",null,"Cart ("+Object(n["y"])(C.cartTotalLength)+")",1)]})),_:1})])])])],2)]),Object(n["g"])("div",{class:["is-loading-bar has-text-centered",{"is-loading":t.$store.state.isLoading}]},[v],2),Object(n["g"])("section",y,[Object(n["g"])(T)]),w])}var S=c("bc3a"),C=c.n(S),x={data:function(){return{showMobileMenu:!1,cart:{items:[]}}},beforeCreate:function(){this.$store.commit("initializeStore");var t=this.$store.state.token;C.a.defaults.headers.common["Authorization"]=t?"Token "+t:""},mounted:function(){this.cart=this.$store.state.cart},computed:{cartTotalLength:function(){for(var t=0,e=0;e<this.cart.items.length;e++)t+=this.cart.items[e].quantity;return t}}};c("822b");x.render=k;var T=x,P=(c("d3b7"),c("3ca3"),c("ddb0"),c("6c02")),I=(c("4de4"),c("5502")),q=Object(I["a"])({state:{cart:{items:[]},isAuthenticated:!1,token:"",isLoading:!1},mutations:{initializeStore:function(t){localStorage.getItem("cart")?t.cart=JSON.parse(localStorage.getItem("cart")):localStorage.setItem("cart",JSON.stringify(t.cart)),localStorage.getItem("token")?(t.token=localStorage.getItem("token"),t.isAuthenticated=!0):(t.token="",t.isAuthenticated=!1)},addToCart:function(t,e){var c=t.cart.items.filter((function(t){return t.product.id===e.product.id}));c.length?c[0].quantity=parseInt(c[0].quantity)+parseInt(e.quantity):t.cart.items.push(e),localStorage.setItem("cart",JSON.stringify(t.cart))},setIsLoading:function(t,e){t.isLoading=e},setToken:function(t,e){t.token=e,t.isAuthenticated=!0},removeToken:function(t){t.token="",t.isAuthenticated=!1},clearCart:function(t){t.cart={items:[]},localStorage.setItem("cart",JSON.stringify(t.cart))}},actions:{},modules:{}}),L={class:"home"},_=Object(n["g"])("section",{class:"hero is-medium is-dark mb-6"},[Object(n["g"])("div",{class:"hero-body has-text-centered"},[Object(n["g"])("p",{class:"title mb-6"}," Welcome to Djacket "),Object(n["g"])("p",{class:"subtitle"}," The best jacket store online ")])],-1),$={class:"columns is-multiline"},A=Object(n["g"])("div",{class:"column is-12"},[Object(n["g"])("h2",{class:"is-size-2 has-text-centered"},"Latest products")],-1);function D(t,e,c,r,a,s){var o=Object(n["w"])("ProductBox");return Object(n["p"])(),Object(n["d"])("div",L,[_,Object(n["g"])("div",$,[A,(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.latestProducts,(function(t){return Object(n["p"])(),Object(n["d"])(o,{key:t.id,product:t},null,8,["product"])})),128))])])}var F=c("1da1"),z=(c("96cf"),c("b0c0"),Object(n["F"])("data-v-df598780"));Object(n["s"])("data-v-df598780");var M={class:"column is-3"},R={class:"box"},U={class:"image mb-4"},V={class:"is-size-4"},E={class:"is-size-6 has-text-grey"},H=Object(n["f"])("View details");Object(n["q"])();var J=z((function(t,e,c,r,a,s){var o=Object(n["w"])("router-link");return Object(n["p"])(),Object(n["d"])("div",M,[Object(n["g"])("div",R,[Object(n["g"])("figure",U,[Object(n["g"])("img",{src:c.product.get_thumbnail},null,8,["src"])]),Object(n["g"])("h3",V,Object(n["y"])(c.product.name),1),Object(n["g"])("p",E,"$"+Object(n["y"])(c.product.price),1),Object(n["g"])(o,{to:c.product.get_absolute_url,class:"button is-dark mt-4"},{default:z((function(){return[H]})),_:1},8,["to"])])])})),N={name:"ProductBox",props:{product:Object}};c("c9d5");N.render=J,N.__scopeId="data-v-df598780";var Q=N,B={name:"Home",data:function(){return{latestProducts:[]}},components:{ProductBox:Q},mounted:function(){this.getLatestProducts(),document.title="Home | Djackets"},methods:{getLatestProducts:function(){var t=this;return Object(F["a"])(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.$store.commit("setIsLoading",!0),e.next=3,C.a.get("/api/v1/latest-products/").then((function(e){t.latestProducts=e.data})).catch((function(t){console.log(t)}));case 3:t.$store.commit("setIsLoading",!1);case 4:case"end":return e.stop()}}),e)})))()}}};B.render=D;var W=B,K=(c("a4d3"),c("e01a"),{class:"page-product"}),Y={class:"columns is-multiline"},G={class:"column is-9"},X={class:"image mb-6"},Z={class:"title"},tt={class:"column is-3"},et=Object(n["g"])("h2",{class:"subtitle"},"Information",-1),ct=Object(n["g"])("strong",null,"Price: ",-1),nt={class:"field has-addons mt-6"},rt={class:"control"},at={class:"control"};function st(t,e,c,r,a,s){return Object(n["p"])(),Object(n["d"])("div",K,[Object(n["g"])("div",Y,[Object(n["g"])("div",G,[Object(n["g"])("figure",X,[Object(n["g"])("img",{src:a.product.get_image},null,8,["src"])]),Object(n["g"])("h1",Z,Object(n["y"])(a.product.name),1),Object(n["g"])("p",null,Object(n["y"])(a.product.description),1)]),Object(n["g"])("div",tt,[et,Object(n["g"])("p",null,[ct,Object(n["f"])("$"+Object(n["y"])(a.product.price),1)]),Object(n["g"])("div",nt,[Object(n["g"])("div",rt,[Object(n["D"])(Object(n["g"])("input",{type:"number",class:"input",min:"1","onUpdate:modelValue":e[1]||(e[1]=function(t){return a.quantity=t})},null,512),[[n["A"],a.quantity]])]),Object(n["g"])("div",at,[Object(n["g"])("a",{class:"button is-dark",onClick:e[2]||(e[2]=function(t){return s.addToCart()})},"Add to cart")])])])])])}c("99af");var ot=c("4b44"),it={name:"Product",data:function(){return{product:{},quantity:1}},mounted:function(){this.getProduct()},methods:{getProduct:function(){var t=this;return Object(F["a"])(regeneratorRuntime.mark((function e(){var c,n;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.$store.commit("setIsLoading",!0),c=t.$route.params.category_slug,n=t.$route.params.product_slug,e.next=5,C.a.get("/api/v1/products/".concat(c,"/").concat(n)).then((function(e){t.product=e.data,document.title=t.product.name+" | Djackets"})).catch((function(t){console.log(t)}));case 5:t.$store.commit("setIsLoading",!1);case 6:case"end":return e.stop()}}),e)})))()},addToCart:function(){(isNaN(this.quantity)||this.quantity<1)&&(this.quantity=1);var t={product:this.product,quantity:this.quantity};this.$store.commit("addToCart",t),Object(ot["toast"])({message:"The product was added to the cart",type:"is-success",dismissible:!0,pauseOnHover:!0,duration:2e3,position:"bottom-right"})}}};it.render=st;var ut=it,lt={class:"page-category"},dt={class:"columns is-multiline"},bt={class:"column is-12"},gt={class:"is-size-2 has-text-centered"};function mt(t,e,c,r,a,s){var o=Object(n["w"])("ProductBox");return Object(n["p"])(),Object(n["d"])("div",lt,[Object(n["g"])("div",dt,[Object(n["g"])("div",bt,[Object(n["g"])("h2",gt,Object(n["y"])(a.category.name),1)]),(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.category.products,(function(t){return Object(n["p"])(),Object(n["d"])(o,{key:t.id,product:t},null,8,["product"])})),128))])])}var pt={name:"Category",components:{ProductBox:Q},data:function(){return{category:{products:[]}}},mounted:function(){this.getCategory()},watch:{$route:function(t,e){"Category"===t.name&&this.getCategory()}},methods:{getCategory:function(){var t=this;return Object(F["a"])(regeneratorRuntime.mark((function e(){var c;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:c=t.$route.params.category_slug,t.$store.commit("setIsLoading",!0),C.a.get("/api/v1/products/".concat(c,"/")).then((function(e){t.category=e.data,document.title=t.category.name+" | Djackets"})).catch((function(t){console.log(t),Object(ot["toast"])({message:"Something went wrong. Please try again.",type:"is-danger",dismissible:!0,pauseOnHover:!0,duration:2e3,position:"bottom-right"})})),t.$store.commit("setIsLoading",!1);case 4:case"end":return e.stop()}}),e)})))()}}};pt.render=mt;var Ot=pt,jt={class:"page-search"},ht={class:"columns is-multiline"},ft={class:"column is-12"},vt=Object(n["g"])("h1",{class:"title"},"Search",-1),yt={class:"is-size-5 has-text-grey"};function wt(t,e,c,r,a,s){var o=Object(n["w"])("ProductBox");return Object(n["p"])(),Object(n["d"])("div",jt,[Object(n["g"])("div",ht,[Object(n["g"])("div",ft,[vt,Object(n["g"])("h2",yt,'Search term: "'+Object(n["y"])(a.query)+'"',1)]),(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.products,(function(t){return Object(n["p"])(),Object(n["d"])(o,{key:t.id,product:t},null,8,["product"])})),128))])])}c("841c"),c("ac1f"),c("2b3d");var kt={name:"Search",components:{ProductBox:Q},data:function(){return{products:[],query:""}},mounted:function(){document.title="Search | Djackets";var t=window.location.search.substring(1),e=new URLSearchParams(t);e.get("query")&&(this.query=e.get("query"),this.performSearch())},methods:{performSearch:function(){var t=this;return Object(F["a"])(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.$store.commit("setIsLoading",!0),e.next=3,C.a.post("/api/v1/products/search/",{query:t.query}).then((function(e){t.products=e.data})).catch((function(t){console.log(t)}));case 3:t.$store.commit("setIsLoading",!1);case 4:case"end":return e.stop()}}),e)})))()}}};kt.render=wt;var St=kt,Ct=(c("b680"),{class:"page-cart"}),xt={class:"columns is-multiline"},Tt=Object(n["g"])("div",{class:"column is-12"},[Object(n["g"])("h1",{class:"title"},"Cart")],-1),Pt={class:"column is-12 box"},It={key:0,class:"table is-fullwidth"},qt=Object(n["g"])("thead",null,[Object(n["g"])("tr",null,[Object(n["g"])("th",null,"Product"),Object(n["g"])("th",null,"Price"),Object(n["g"])("th",null,"Quantity"),Object(n["g"])("th",null,"Total"),Object(n["g"])("th")])],-1),Lt={key:1},_t={class:"column is-12 box"},$t=Object(n["g"])("h2",{class:"subtitle"},"Summary",-1),At=Object(n["g"])("hr",null,null,-1),Dt=Object(n["f"])("Proceed to checkout");function Ft(t,e,c,r,a,s){var o=Object(n["w"])("CartItem"),i=Object(n["w"])("router-link");return Object(n["p"])(),Object(n["d"])("div",Ct,[Object(n["g"])("div",xt,[Tt,Object(n["g"])("div",Pt,[s.cartTotalLength?(Object(n["p"])(),Object(n["d"])("table",It,[qt,Object(n["g"])("tbody",null,[(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.cart.items,(function(t){return Object(n["p"])(),Object(n["d"])(o,{key:t.product.id,initialItem:t,onRemoveFromCart:s.removeFromCart},null,8,["initialItem","onRemoveFromCart"])})),128))])])):(Object(n["p"])(),Object(n["d"])("p",Lt,"You don't have any products in your cart..."))]),Object(n["g"])("div",_t,[$t,Object(n["g"])("strong",null,"$"+Object(n["y"])(s.cartTotalPrice.toFixed(2)),1),Object(n["f"])(", "+Object(n["y"])(s.cartTotalLength)+" items ",1),At,Object(n["g"])(i,{to:"/cart/checkout",class:"button is-dark"},{default:Object(n["C"])((function(){return[Dt]})),_:1})])])])}c("13d5");function zt(t,e,c,r,a,s){var o=Object(n["w"])("router-link");return Object(n["p"])(),Object(n["d"])("tr",null,[Object(n["g"])("td",null,[Object(n["g"])(o,{to:a.item.product.get_absolute_url},{default:Object(n["C"])((function(){return[Object(n["f"])(Object(n["y"])(a.item.product.name),1)]})),_:1},8,["to"])]),Object(n["g"])("td",null,"$"+Object(n["y"])(a.item.product.price),1),Object(n["g"])("td",null,[Object(n["f"])(Object(n["y"])(a.item.quantity)+" ",1),Object(n["g"])("a",{onClick:e[1]||(e[1]=function(t){return s.decrementQuantity(a.item)})},"-"),Object(n["g"])("a",{onClick:e[2]||(e[2]=function(t){return s.incrementQuantity(a.item)})},"+")]),Object(n["g"])("td",null,"$"+Object(n["y"])(s.getItemTotal(a.item).toFixed(2)),1),Object(n["g"])("td",null,[Object(n["g"])("button",{class:"delete",onClick:e[3]||(e[3]=function(t){return s.removeFromCart(a.item)})})])])}var Mt={name:"CartItem",props:{initialItem:Object},data:function(){return{item:this.initialItem}},methods:{getItemTotal:function(t){return t.quantity*t.product.price},decrementQuantity:function(t){t.quantity-=1,0===t.quantity&&this.$emit("removeFromCart",t),this.updateCart()},incrementQuantity:function(t){t.quantity+=1,this.updateCart()},updateCart:function(){localStorage.setItem("cart",JSON.stringify(this.$store.state.cart))},removeFromCart:function(t){this.$emit("removeFromCart",t),this.updateCart()}}};Mt.render=zt;var Rt=Mt,Ut={name:"Cart",components:{CartItem:Rt},data:function(){return{cart:{items:[]}}},mounted:function(){this.cart=this.$store.state.cart},methods:{removeFromCart:function(t){this.cart.items=this.cart.items.filter((function(e){return e.product.id!==t.product.id}))}},computed:{cartTotalLength:function(){return this.cart.items.reduce((function(t,e){return t+e.quantity}),0)},cartTotalPrice:function(){return this.cart.items.reduce((function(t,e){return t+e.product.price*e.quantity}),0)}}};Ut.render=Ft;var Vt=Ut,Et={class:"page-sign-up"},Ht={class:"columns"},Jt={class:"column is-4 is-offset-4"},Nt=Object(n["g"])("h1",{class:"title"},"Sign up",-1),Qt={class:"field"},Bt=Object(n["g"])("label",null,"Username",-1),Wt={class:"control"},Kt={class:"field"},Yt=Object(n["g"])("label",null,"Password",-1),Gt={class:"control"},Xt={class:"field"},Zt=Object(n["g"])("label",null,"Repeat password",-1),te={class:"control"},ee={key:0,class:"notification is-danger"},ce=Object(n["g"])("div",{class:"field"},[Object(n["g"])("div",{class:"control"},[Object(n["g"])("button",{class:"button is-dark"},"Sign up")])],-1),ne=Object(n["g"])("hr",null,null,-1),re=Object(n["f"])(" Or "),ae=Object(n["f"])("click here"),se=Object(n["f"])(" to log in! ");function oe(t,e,c,r,a,s){var o=Object(n["w"])("router-link");return Object(n["p"])(),Object(n["d"])("div",Et,[Object(n["g"])("div",Ht,[Object(n["g"])("div",Jt,[Nt,Object(n["g"])("form",{onSubmit:e[4]||(e[4]=Object(n["E"])((function(){return s.submitForm&&s.submitForm.apply(s,arguments)}),["prevent"]))},[Object(n["g"])("div",Qt,[Bt,Object(n["g"])("div",Wt,[Object(n["D"])(Object(n["g"])("input",{type:"text",class:"input","onUpdate:modelValue":e[1]||(e[1]=function(t){return a.username=t})},null,512),[[n["A"],a.username]])])]),Object(n["g"])("div",Kt,[Yt,Object(n["g"])("div",Gt,[Object(n["D"])(Object(n["g"])("input",{type:"password",class:"input","onUpdate:modelValue":e[2]||(e[2]=function(t){return a.password=t})},null,512),[[n["A"],a.password]])])]),Object(n["g"])("div",Xt,[Zt,Object(n["g"])("div",te,[Object(n["D"])(Object(n["g"])("input",{type:"password",class:"input","onUpdate:modelValue":e[3]||(e[3]=function(t){return a.password2=t})},null,512),[[n["A"],a.password2]])])]),a.errors.length?(Object(n["p"])(),Object(n["d"])("div",ee,[(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.errors,(function(t){return Object(n["p"])(),Object(n["d"])("p",{key:t},Object(n["y"])(t),1)})),128))])):Object(n["e"])("",!0),ce,ne,re,Object(n["g"])(o,{to:"/log-in"},{default:Object(n["C"])((function(){return[ae]})),_:1}),se],32)])])])}var ie={name:"SignUp",data:function(){return{username:"",password:"",password2:"",errors:[]}},methods:{submitForm:function(){var t=this;if(this.errors=[],""===this.username&&this.errors.push("The username is missing"),""===this.password&&this.errors.push("The password is too short"),this.password!==this.password2&&this.errors.push("The passwords doesn't match"),!this.errors.length){var e={username:this.username,password:this.password};C.a.post("/api/v1/users/",e).then((function(e){Object(ot["toast"])({message:"Account created, please log in!",type:"is-success",dismissible:!0,pauseOnHover:!0,duration:2e3,position:"bottom-right"}),t.$router.push("/log-in")})).catch((function(e){if(e.response){for(var c in e.response.data)t.errors.push("".concat(c,": ").concat(e.response.data[c]));console.log(JSON.stringify(e.response.data))}else e.message&&(t.errors.push("Something went wrong. Please try again"),console.log(JSON.stringify(e)))}))}}}};ie.render=oe;var ue=ie,le={class:"page-log-in"},de={class:"columns"},be={class:"column is-4 is-offset-4"},ge=Object(n["g"])("h1",{class:"title"},"Log in",-1),me={class:"field"},pe=Object(n["g"])("label",null,"Username",-1),Oe={class:"control"},je={class:"field"},he=Object(n["g"])("label",null,"Password",-1),fe={class:"control"},ve={key:0,class:"notification is-danger"},ye=Object(n["g"])("div",{class:"field"},[Object(n["g"])("div",{class:"control"},[Object(n["g"])("button",{class:"button is-dark"},"Log in")])],-1),we=Object(n["g"])("hr",null,null,-1),ke=Object(n["f"])(" Or "),Se=Object(n["f"])("click here"),Ce=Object(n["f"])(" to sign up! ");function xe(t,e,c,r,a,s){var o=Object(n["w"])("router-link");return Object(n["p"])(),Object(n["d"])("div",le,[Object(n["g"])("div",de,[Object(n["g"])("div",be,[ge,Object(n["g"])("form",{onSubmit:e[3]||(e[3]=Object(n["E"])((function(){return s.submitForm&&s.submitForm.apply(s,arguments)}),["prevent"]))},[Object(n["g"])("div",me,[pe,Object(n["g"])("div",Oe,[Object(n["D"])(Object(n["g"])("input",{type:"text",class:"input","onUpdate:modelValue":e[1]||(e[1]=function(t){return a.username=t})},null,512),[[n["A"],a.username]])])]),Object(n["g"])("div",je,[he,Object(n["g"])("div",fe,[Object(n["D"])(Object(n["g"])("input",{type:"password",class:"input","onUpdate:modelValue":e[2]||(e[2]=function(t){return a.password=t})},null,512),[[n["A"],a.password]])])]),a.errors.length?(Object(n["p"])(),Object(n["d"])("div",ve,[(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.errors,(function(t){return Object(n["p"])(),Object(n["d"])("p",{key:t},Object(n["y"])(t),1)})),128))])):Object(n["e"])("",!0),ye,we,ke,Object(n["g"])(o,{to:"/sign-up"},{default:Object(n["C"])((function(){return[Se]})),_:1}),Ce],32)])])])}var Te={name:"LogIn",data:function(){return{username:"",password:"",errors:[]}},mounted:function(){document.title="Log In | Djackets"},methods:{submitForm:function(){var t=this;return Object(F["a"])(regeneratorRuntime.mark((function e(){var c;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return C.a.defaults.headers.common["Authorization"]="",localStorage.removeItem("token"),c={username:t.username,password:t.password},e.next=5,C.a.post("/api/v1/token/login/",c).then((function(e){var c=e.data.auth_token;t.$store.commit("setToken",c),C.a.defaults.headers.common["Authorization"]="Token "+c,localStorage.setItem("token",c);var n=t.$route.query.to||"/cart";t.$router.push(n)})).catch((function(e){if(e.response)for(var c in e.response.data)t.errors.push("".concat(c,": ").concat(e.response.data[c]));else t.errors.push("Something went wrong. Please try again"),console.log(JSON.stringify(e))}));case 5:case"end":return e.stop()}}),e)})))()}}};Te.render=xe;var Pe=Te,Ie={class:"page-my-account"},qe={class:"columns is-multiline"},Le=Object(n["g"])("div",{class:"column is-12"},[Object(n["g"])("h1",{class:"title"},"My account")],-1),_e={class:"column is-12"},$e=Object(n["g"])("hr",null,null,-1),Ae={class:"column is-12"},De=Object(n["g"])("h2",{class:"subtitle"},"My orders",-1);function Fe(t,e,c,r,a,s){var o=Object(n["w"])("OrderSummary");return Object(n["p"])(),Object(n["d"])("div",Ie,[Object(n["g"])("div",qe,[Le,Object(n["g"])("div",_e,[Object(n["g"])("button",{onClick:e[1]||(e[1]=function(t){return s.logout()}),class:"button is-danger"},"Log out")]),$e,Object(n["g"])("div",Ae,[De,(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.orders,(function(t){return Object(n["p"])(),Object(n["d"])(o,{key:t.id,order:t},null,8,["order"])})),128))])])])}var ze={class:"box mb-4"},Me={class:"is-size-4 mb-6"},Re=Object(n["g"])("h4",{class:"is-size-5"},"Products",-1),Ue={class:"table is-fullwidth"},Ve=Object(n["g"])("thead",null,[Object(n["g"])("tr",null,[Object(n["g"])("th",null,"Product"),Object(n["g"])("th",null,"Price"),Object(n["g"])("th",null,"Quantity"),Object(n["g"])("th",null,"Total")])],-1);function Ee(t,e,c,r,a,s){return Object(n["p"])(),Object(n["d"])("div",ze,[Object(n["g"])("h3",Me,"Order #"+Object(n["y"])(c.order.id),1),Re,Object(n["g"])("table",Ue,[Ve,Object(n["g"])("tbody",null,[(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(c.order.items,(function(t){return Object(n["p"])(),Object(n["d"])("tr",{key:t.product.id},[Object(n["g"])("td",null,Object(n["y"])(t.product.name),1),Object(n["g"])("td",null,"$"+Object(n["y"])(t.product.price),1),Object(n["g"])("td",null,Object(n["y"])(t.quantity),1),Object(n["g"])("td",null,"$"+Object(n["y"])(s.getItemTotal(t).toFixed(2)),1)])})),128))])])])}var He={name:"OrderSummary",props:{order:Object},methods:{getItemTotal:function(t){return t.quantity*t.product.price},orderTotalLength:function(t){return t.items.reduce((function(t,e){return t+e.quantity}),0)}}};He.render=Ee;var Je=He,Ne={name:"MyAccount",components:{OrderSummary:Je},data:function(){return{orders:[]}},mounted:function(){document.title="My account | Djackets",this.getMyOrders()},methods:{logout:function(){C.a.defaults.headers.common["Authorization"]="",localStorage.removeItem("token"),localStorage.removeItem("username"),localStorage.removeItem("userid"),this.$store.commit("removeToken"),this.$router.push("/")},getMyOrders:function(){var t=this;return Object(F["a"])(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t.$store.commit("setIsLoading",!0),e.next=3,C.a.get("/api/v1/orders/").then((function(e){t.orders=e.data})).catch((function(t){console.log(t)}));case 3:t.$store.commit("setIsLoading",!1);case 4:case"end":return e.stop()}}),e)})))()}}};Ne.render=Fe;var Qe=Ne,Be={class:"page-checkout"},We={class:"columns is-multiline"},Ke=Object(n["g"])("div",{class:"column is-12"},[Object(n["g"])("h1",{class:"title"},"Checkout")],-1),Ye={class:"column is-12 box"},Ge={class:"table is-fullwidth"},Xe=Object(n["g"])("thead",null,[Object(n["g"])("tr",null,[Object(n["g"])("th",null,"Product"),Object(n["g"])("th",null,"Price"),Object(n["g"])("th",null,"Quantity"),Object(n["g"])("th",null,"Total")])],-1),Ze=Object(n["g"])("td",{colspan:"2"},"Total",-1),tc={class:"column is-12 box"},ec=Object(n["g"])("h2",{class:"subtitle"},"Shipping details",-1),cc=Object(n["g"])("p",{class:"has-text-grey mb-4"},"* All fields are required",-1),nc={class:"columns is-multiline"},rc={class:"column is-6"},ac={class:"field"},sc=Object(n["g"])("label",null,"First name*",-1),oc={class:"control"},ic={class:"field"},uc=Object(n["g"])("label",null,"Last name*",-1),lc={class:"control"},dc={class:"field"},bc=Object(n["g"])("label",null,"E-mail*",-1),gc={class:"control"},mc={class:"field"},pc=Object(n["g"])("label",null,"Phone*",-1),Oc={class:"control"},jc={class:"column is-6"},hc={class:"field"},fc=Object(n["g"])("label",null,"Address*",-1),vc={class:"control"},yc={class:"field"},wc=Object(n["g"])("label",null,"Zip code*",-1),kc={class:"control"},Sc={class:"field"},Cc=Object(n["g"])("label",null,"Place*",-1),xc={class:"control"},Tc={key:0,class:"notification is-danger mt-4"},Pc=Object(n["g"])("hr",null,null,-1),Ic=Object(n["g"])("div",{id:"card-element",class:"mb-5"},null,-1),qc=Object(n["g"])("hr",null,null,-1);function Lc(t,e,c,r,a,s){return Object(n["p"])(),Object(n["d"])("div",Be,[Object(n["g"])("div",We,[Ke,Object(n["g"])("div",Ye,[Object(n["g"])("table",Ge,[Xe,Object(n["g"])("tbody",null,[(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.cart.items,(function(t){return Object(n["p"])(),Object(n["d"])("tr",{key:t.product.id},[Object(n["g"])("td",null,Object(n["y"])(t.product.name),1),Object(n["g"])("td",null,"$"+Object(n["y"])(t.product.price),1),Object(n["g"])("td",null,Object(n["y"])(t.quantity),1),Object(n["g"])("td",null,"$"+Object(n["y"])(s.getItemTotal(t).toFixed(2)),1)])})),128))]),Object(n["g"])("tfoot",null,[Object(n["g"])("tr",null,[Ze,Object(n["g"])("td",null,Object(n["y"])(s.cartTotalLength),1),Object(n["g"])("td",null,"$"+Object(n["y"])(s.cartTotalPrice.toFixed(2)),1)])])])]),Object(n["g"])("div",tc,[ec,cc,Object(n["g"])("div",nc,[Object(n["g"])("div",rc,[Object(n["g"])("div",ac,[sc,Object(n["g"])("div",oc,[Object(n["D"])(Object(n["g"])("input",{type:"text",class:"input","onUpdate:modelValue":e[1]||(e[1]=function(t){return a.first_name=t})},null,512),[[n["A"],a.first_name]])])]),Object(n["g"])("div",ic,[uc,Object(n["g"])("div",lc,[Object(n["D"])(Object(n["g"])("input",{type:"text",class:"input","onUpdate:modelValue":e[2]||(e[2]=function(t){return a.last_name=t})},null,512),[[n["A"],a.last_name]])])]),Object(n["g"])("div",dc,[bc,Object(n["g"])("div",gc,[Object(n["D"])(Object(n["g"])("input",{type:"email",class:"input","onUpdate:modelValue":e[3]||(e[3]=function(t){return a.email=t})},null,512),[[n["A"],a.email]])])]),Object(n["g"])("div",mc,[pc,Object(n["g"])("div",Oc,[Object(n["D"])(Object(n["g"])("input",{type:"text",class:"input","onUpdate:modelValue":e[4]||(e[4]=function(t){return a.phone=t})},null,512),[[n["A"],a.phone]])])])]),Object(n["g"])("div",jc,[Object(n["g"])("div",hc,[fc,Object(n["g"])("div",vc,[Object(n["D"])(Object(n["g"])("input",{type:"text",class:"input","onUpdate:modelValue":e[5]||(e[5]=function(t){return a.address=t})},null,512),[[n["A"],a.address]])])]),Object(n["g"])("div",yc,[wc,Object(n["g"])("div",kc,[Object(n["D"])(Object(n["g"])("input",{type:"text",class:"input","onUpdate:modelValue":e[6]||(e[6]=function(t){return a.zipcode=t})},null,512),[[n["A"],a.zipcode]])])]),Object(n["g"])("div",Sc,[Cc,Object(n["g"])("div",xc,[Object(n["D"])(Object(n["g"])("input",{type:"text",class:"input","onUpdate:modelValue":e[7]||(e[7]=function(t){return a.place=t})},null,512),[[n["A"],a.place]])])])])]),a.errors.length?(Object(n["p"])(),Object(n["d"])("div",Tc,[(Object(n["p"])(!0),Object(n["d"])(n["a"],null,Object(n["v"])(a.errors,(function(t){return Object(n["p"])(),Object(n["d"])("p",{key:t},Object(n["y"])(t),1)})),128))])):Object(n["e"])("",!0),Pc,Ic,s.cartTotalLength?(Object(n["p"])(),Object(n["d"])(n["a"],{key:1},[qc,Object(n["g"])("button",{class:"button is-dark",onClick:e[8]||(e[8]=function(){return s.submitForm&&s.submitForm.apply(s,arguments)})},"Pay with Stripe")],64)):Object(n["e"])("",!0)])])])}var _c={name:"Checkout",data:function(){return{cart:{items:[]},stripe:{},card:{},first_name:"",last_name:"",email:"",phone:"",address:"",zipcode:"",place:"",errors:[]}},mounted:function(){if(document.title="Checkout | Djackets",this.cart=this.$store.state.cart,this.cartTotalLength>0){this.stripe=Stripe("pk_test_51H1HiuKBJV2qfWbD2gQe6aqanfw6Eyul5PO2KeOuSRlUMuaV4TxEtaQyzr9DbLITSZweL7XjK3p74swcGYrE2qEX00Hz7GmhMI");var t=this.stripe.elements();this.card=t.create("card",{hidePostalCode:!0}),this.card.mount("#card-element")}},methods:{getItemTotal:function(t){return t.quantity*t.product.price},submitForm:function(){var t=this;this.errors=[],""===this.first_name&&this.errors.push("The first name field is missing!"),""===this.last_name&&this.errors.push("The last name field is missing!"),""===this.email&&this.errors.push("The email field is missing!"),""===this.phone&&this.errors.push("The phone field is missing!"),""===this.address&&this.errors.push("The address field is missing!"),""===this.zipcode&&this.errors.push("The zip code field is missing!"),""===this.place&&this.errors.push("The place field is missing!"),this.errors.length||(this.$store.commit("setIsLoading",!0),this.stripe.createToken(this.card).then((function(e){e.error?(t.$store.commit("setIsLoading",!1),t.errors.push("Something went wrong with Stripe. Please try again"),console.log(e.error.message)):t.stripeTokenHandler(e.token)})))},stripeTokenHandler:function(t){var e=this;return Object(F["a"])(regeneratorRuntime.mark((function c(){var n,r,a,s,o;return regeneratorRuntime.wrap((function(c){while(1)switch(c.prev=c.next){case 0:for(n=[],r=0;r<e.cart.items.length;r++)a=e.cart.items[r],s={product:a.product.id,quantity:a.quantity,price:a.product.price*a.quantity},n.push(s);return o={first_name:e.first_name,last_name:e.last_name,email:e.email,address:e.address,zipcode:e.zipcode,place:e.place,phone:e.phone,items:n,stripe_token:t.id},c.next=5,C.a.post("/api/v1/checkout/",o).then((function(t){e.$store.commit("clearCart"),e.$router.push("/cart/success")})).catch((function(t){e.errors.push("Something went wrong. Please try again"),console.log(t)}));case 5:e.$store.commit("setIsLoading",!1);case 6:case"end":return c.stop()}}),c)})))()}},computed:{cartTotalPrice:function(){return this.cart.items.reduce((function(t,e){return t+e.product.price*e.quantity}),0)},cartTotalLength:function(){return this.cart.items.reduce((function(t,e){return t+e.quantity}),0)}}};_c.render=Lc;var $c=_c,Ac={class:"page-success"},Dc=Object(n["g"])("div",{class:"columns is-multiline"},[Object(n["g"])("div",{class:"column is-12"},[Object(n["g"])("h1",{class:"title"},"Thank you"),Object(n["g"])("p",null,"Your order will be processed within 48 hours")])],-1);function Fc(t,e,c,r,a,s){return Object(n["p"])(),Object(n["d"])("div",Ac,[Dc])}var zc={name:"Success",mounted:function(){document.title="Success | Djackets"}};zc.render=Fc;var Mc=zc,Rc=[{path:"/",name:"Home",component:W},{path:"/about",name:"About",component:function(){return c.e("about").then(c.bind(null,"f820"))}},{path:"/sign-up",name:"SignUp",component:ue},{path:"/log-in",name:"LogIn",component:Pe},{path:"/my-account",name:"MyAccount",component:Qe,meta:{requireLogin:!0}},{path:"/search",name:"Search",component:St},{path:"/cart",name:"Cart",component:Vt},{path:"/cart/success",name:"Success",component:Mc},{path:"/cart/checkout",name:"Checkout",component:$c,meta:{requireLogin:!0}},{path:"/:category_slug/:product_slug",name:"Product",component:ut},{path:"/:category_slug",name:"Category",component:Ot}],Uc=Object(P["a"])({history:Object(P["b"])("/"),routes:Rc});Uc.beforeEach((function(t,e,c){t.matched.some((function(t){return t.meta.requireLogin}))&&!q.state.isAuthenticated?c({name:"LogIn",query:{to:t.path}}):c()}));var Vc=Uc;C.a.defaults.baseURL="https://apidjackets.codewithstein.com",Object(n["c"])(T).use(q).use(Vc,C.a).mount("#app")},"822b":function(t,e,c){"use strict";c("0254")},c9d5:function(t,e,c){"use strict";c("475f")}});
//# sourceMappingURL=app.bd630e90.js.map