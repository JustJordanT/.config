"use strict";var a=Object.defineProperty;var h=Object.getOwnPropertyDescriptor;var i=Object.getOwnPropertyNames;var d=Object.prototype.hasOwnProperty;var u=(n,o)=>{for(var t in o)a(n,t,{get:o[t],enumerable:!0})},f=(n,o,t,s)=>{if(o&&typeof o=="object"||typeof o=="function")for(let e of i(o))!d.call(n,e)&&e!==t&&a(n,e,{get:()=>o[e],enumerable:!(s=h(o,e))||s.enumerable});return n};var p=n=>f(a({},"__esModule",{value:!0}),n);var M={};u(M,{default:()=>y});module.exports=p(M);var c=require("@raycast/api");var r=require("@raycast/api");function m(){return(0,r.launchCommand)({name:"menu-bar",type:r.LaunchType.Background,context:{fromCommand:!0}})}var C=new c.Cache,g=async()=>{C.set("todoist.focusedTask",JSON.stringify({id:"",content:""})),await(0,c.showHUD)("\u{1F44B} No more focus");try{m()}catch{}},y=g;