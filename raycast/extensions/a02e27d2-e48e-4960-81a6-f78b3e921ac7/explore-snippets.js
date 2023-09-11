"use strict";var O=Object.create;var x=Object.defineProperty;var B=Object.getOwnPropertyDescriptor;var E=Object.getOwnPropertyNames;var N=Object.getPrototypeOf,G=Object.prototype.hasOwnProperty;var H=(n,e)=>()=>(e||n((e={exports:{}}).exports,e),e.exports),W=(n,e)=>{for(var o in e)x(n,o,{get:e[o],enumerable:!0})},v=(n,e,o,s)=>{if(e&&typeof e=="object"||typeof e=="function")for(let p of E(e))!G.call(n,p)&&p!==o&&x(n,p,{get:()=>e[p],enumerable:!(s=B(e,p))||s.enumerable});return n};var _=(n,e,o)=>(o=n!=null?O(N(n)):{},v(e||!n||!n.__esModule?x(o,"default",{value:n,enumerable:!0}):o,n)),q=n=>v(x({},"__esModule",{value:!0}),n);var L=H((le,A)=>{A.exports=function(n,e){e=e||{},e.listUnicodeChar=e.hasOwnProperty("listUnicodeChar")?e.listUnicodeChar:!1,e.stripListLeaders=e.hasOwnProperty("stripListLeaders")?e.stripListLeaders:!0,e.gfm=e.hasOwnProperty("gfm")?e.gfm:!0,e.useImgAltText=e.hasOwnProperty("useImgAltText")?e.useImgAltText:!0,e.abbr=e.hasOwnProperty("abbr")?e.abbr:!1,e.replaceLinksWithURL=e.hasOwnProperty("replaceLinksWithURL")?e.replaceLinksWithURL:!1,e.htmlTagsToSkip=e.hasOwnProperty("htmlTagsToSkip")?e.htmlTagsToSkip:[];var o=n||"";o=o.replace(/^(-\s*?|\*\s*?|_\s*?){3,}\s*/gm,"");try{e.stripListLeaders&&(e.listUnicodeChar?o=o.replace(/^([\s\t]*)([\*\-\+]|\d+\.)\s+/gm,e.listUnicodeChar+" $1"):o=o.replace(/^([\s\t]*)([\*\-\+]|\d+\.)\s+/gm,"$1")),e.gfm&&(o=o.replace(/\n={2,}/g,`
`).replace(/~{3}.*\n/g,"").replace(/~~/g,"").replace(/`{3}.*\n/g,"")),e.abbr&&(o=o.replace(/\*\[.*\]:.*\n/,"")),o=o.replace(/<[^>]*>/g,"");var s=new RegExp("<[^>]*>","g");if(e.htmlTagsToSkip.length>0){var p="(?!"+e.htmlTagsToSkip.join("|")+")";s=new RegExp("<"+p+"[^>]*>","ig")}o=o.replace(s,"").replace(/^[=\-]{2,}\s*$/g,"").replace(/\[\^.+?\](\: .*?$)?/g,"").replace(/\s{0,2}\[.*?\]: .*?$/g,"").replace(/\!\[(.*?)\][\[\(].*?[\]\)]/g,e.useImgAltText?"$1":"").replace(/\[([^\]]*?)\][\[\(].*?[\]\)]/g,e.replaceLinksWithURL?"$2":"$1").replace(/^\s{0,3}>\s?/gm,"").replace(/^\s{1,2}\[(.*?)\]: (\S+)( ".*?")?\s*$/g,"").replace(/^(\n)?\s{0,}#{1,6}\s+| {0,}(\n)?\s{0,}#{0,} #{0,}(\n)?\s{0,}$/gm,"$1$2$3").replace(/([\*]+)(\S)(.*?\S)??\1/g,"$2$3").replace(/(^|\W)([_]+)(\S)(.*?\S)??\2($|\W)/g,"$1$3$4$5").replace(/(`{3,})(.*?)\1/gm,"$2").replace(/`(.+?)`/g,"$1").replace(/~(.*?)~/g,"$1")}catch(k){return console.error(k),n}return o}});var ae={};W(ae,{default:()=>P});module.exports=q(ae);var t=require("@raycast/api"),m=require("react"),I=_(L());var y=require("@raycast/api"),V=[{id:"arrow-left",text:"\u2190",name:"Arrow Left",keyword:"left",type:"symbol"},{id:"arrow-up",text:"\u2191",name:"Arrow Up",keyword:"up",type:"symbol"},{id:"arrow-right",text:"\u2192",name:"Arrow Right",keyword:"right",type:"symbol"},{id:"arrow-down",text:"\u2193",name:"Arrow Down",keyword:"down",type:"symbol"},{id:"arrow-up-left",text:"\u2196",name:"Arrow Up Left",keyword:"upleft",type:"symbol"},{id:"arrow-up-right",text:"\u2197\uFE0E",name:"Arrow Up Right",keyword:"upright",type:"symbol"},{id:"arrow-down-left",text:"\u2199",name:"Arrow Down Left",keyword:"downleft",type:"symbol"},{id:"arrow-down-right",text:"\u2198",name:"Arrow Down Right",keyword:"downright",type:"symbol"},{id:"arrow-long-right",text:"\u27F6",name:"Arrow Long Right",keyword:"longright",type:"symbol"},{id:"arrow-long-left",text:"\u27F5",name:"Arrow Long Left",keyword:"longleft",type:"symbol"},{id:"arrow-left-hook",text:"\u21A9",name:"Arrow Left Hook",keyword:"lefthook",type:"symbol"},{id:"arrow-right-hook",text:"\u21AA",name:"Arrow Right Hook",keyword:"righthook",type:"symbol"},{id:"undo",text:"\u21BA",name:"Undo",keyword:"undo",type:"symbol"},{id:"redo",text:"\u21BB",name:"Redo",keyword:"redo",type:"symbol"}],Q=[{id:"middle-dot",text:"\xB7",name:"Middle Dot",keyword:"dot",type:"symbol"},{id:"circle",text:"\u25CF",name:"Circle",keyword:"circle",type:"symbol"},{id:"star-filled",text:"\u2605",name:"Star Filled",keyword:"star-filled",type:"symbol"},{id:"star-outline",text:"\u2606",name:"Star Outline",keyword:"star-outline",type:"symbol"},{id:"sparkle",text:"\u2726",name:"Sparkle",keyword:"sparkle",type:"symbol"},{id:"diamond",text:"\u2756",name:"Diamond",keyword:"diamond",type:"symbol"},{id:"reference-mark",text:"\u203B",name:"Reference Mark",keyword:"reference-mark",type:"symbol"},{id:"asterism",text:"\u2042",name:"Asterism",keyword:"asterism",type:"symbol"},{id:"three-dots",text:"\u2056",name:"Three Dot Punctuation",keyword:"three-dots",type:"symbol"},{id:"four-dots",text:"\u2058",name:"Four Dot Punctuation",keyword:"four-dots",type:"symbol"},{id:"five-dots",text:"\u2059",name:"Five Dot Punctuation",keyword:"five-dots",type:"symbol"},{id:"dotted-cross",text:"\u205C",name:"Dotted Cross",keyword:"dotted-cross",type:"symbol"},{id:"sun",text:"\u2600",name:"Sun",keyword:"sun",type:"symbol"}],j=[{id:"command",text:"\u2318",name:"Command",keyword:"cmd",type:"symbol"},{id:"caps-lock",text:"\u21EA",name:"Caps Lock",keyword:"caps",type:"symbol"},{id:"shift",text:"\u21E7",name:"Shift",keyword:"shift",type:"symbol"},{id:"option",text:"\u2325",name:"Option",keyword:"opt",type:"symbol"},{id:"control",text:"\u2303",name:"Control",keyword:"ctrl",type:"symbol"},{id:"backspace",text:"\u232B",name:"Backspace",keyword:"backspace",type:"symbol"},{id:"escape",text:"\u238B",name:"Escape",keyword:"esc",type:"symbol"},{id:"tab",text:"\u21E5",name:"Tab",keyword:"tab",type:"symbol"},{id:"return",text:"\u23CE",name:"Return",keyword:"return",type:"symbol"},{id:"apple",text:"\uF8FF",name:"Apple",keyword:"apple",type:"symbol"}],z=[{id:"sterling",text:"\xA3",name:"Sterling",keyword:"gbp",type:"symbol"},{id:"euro",text:"\u20AC",name:"Euro",keyword:"eur",type:"symbol"},{id:"yen",text:"\xA5",name:"Yen",keyword:"yen",type:"symbol"},{id:"dollar",text:"$",name:"Dollar",keyword:"usd",type:"symbol"},{id:"indian-rupee",text:"\u20B9",name:"Indian Rupee",keyword:"inr",type:"symbol"},{id:"franc",text:"\u20A3",name:"Franc",keyword:"fr",type:"symbol"},{id:"won",text:"\u20A9",name:"Won",keyword:"krw",type:"symbol"},{id:"peso",text:"\u20B1",name:"Peso",keyword:"php",type:"symbol"},{id:"naira",text:"\u20A6",name:"Naira",keyword:"ngn",type:"symbol"},{id:"baht",text:"\u0E3F",name:"Baht",keyword:"thb",type:"symbol"},{id:"dong",text:"\u20AB",name:"Dong",keyword:"vnd",type:"symbol"},{id:"bitcoin",text:"\u20BF",name:"Bitcoin",keyword:"btc",type:"symbol"},{id:"ethereum",text:"\u039E",name:"Ethereum",keyword:"eth",type:"symbol"}],J=[{id:"multiplication",text:"\xD7",name:"Multiplication",keyword:"x",type:"symbol"},{id:"division",text:"\xF7",name:"Division",keyword:"division",type:"symbol"},{id:"plus-minus",text:"\xB1",name:"Plus Minus",keyword:"+-",type:"symbol"},{id:"one-half",text:"\xBD",name:"One Half",keyword:"1/2",type:"symbol"},{id:"one-third",text:"\u2153",name:"One Third",keyword:"1/3",type:"symbol"},{id:"one-quarter",text:"\xBC",name:"One Quarter",keyword:"1/4",type:"symbol"},{id:"three-quarters",text:"\xBE",name:"Three Quarters",keyword:"3/4",type:"symbol"},{id:"five-sixths",text:"\u215A",name:"Five Sixths",keyword:"5/6",type:"symbol"},{id:"one-fraction",text:"\u215F",name:"One Fraction",keyword:"1/",type:"symbol"},{id:"seven-eighths",text:"\u215E",name:"Seven Eighths",keyword:"7/8",type:"symbol"},{id:"one-eighth",text:"\u215B",name:"One Eighth",keyword:"1/8",type:"symbol"},{id:"five-eighths",text:"\u215D",name:"Five Eighths",keyword:"5/8",type:"symbol"},{id:"three-eighths",text:"\u215C",name:"Three Eighths",keyword:"3/8",type:"symbol"},{id:"infinity",text:"\u221E",name:"Infinity",keyword:"infinity",type:"symbol"}],Y=[{id:"registered",text:"\xAE",name:"Registered",keyword:"registered",type:"symbol"},{id:"copyright",text:"\xA9",name:"Copyright",keyword:"copyright",type:"symbol"},{id:"published",text:"\u2117",name:"Published",keyword:"published",type:"symbol"},{id:"trademark",text:"\u2122",name:"Trademark",keyword:"tm",type:"symbol"},{id:"numero-sign",text:"\u2116",name:"Numero Sign",keyword:"numero-sign",type:"symbol"},{id:"celsius",text:"\u2103",name:"Celsius",keyword:"celsius",type:"symbol"},{id:"fahrenheit",text:"\u2109",name:"Fahrenheit",keyword:"fahrenheit",type:"symbol"},{id:"check",text:"\u2713",name:"Check",keyword:"check",type:"symbol"},{id:"horizontal-ellipsis",text:"\u2026",name:"Horizontal Ellipsis",keyword:"horizontal-ellipsis",type:"symbol"},{id:"triangle",text:"\u25B2",name:"Triangle",keyword:"triangle",type:"symbol"}],K=[{name:"Feedback Thanks",id:"feedback-thanks",text:`Hi \u{1F44B}

Thanks for taking the time to give us your feedback.

{cursor}`,keyword:"feedback-thanks",type:"template"},{name:"Feedback Resolved",id:"feedback-resolved",text:"Glad to know it is resolved. Feel free to reach out for any further clarifications.",keyword:"feedback-resolved",type:"template"},{name:"LinkedIn Feedback",id:"feedback-lkdn",text:`Hey {cursor},

I'm thrilled about the opportunity. Unfortunately, I'm currently not available to accept new offers. However, I hope we can stay connected for future positions if you don't mind. Thank you again and hope to talk to you soon.`,keyword:"feedback-lkdn",type:"template"}],X=[{name:"Console Log",id:"console-log",text:"console.log({cursor})",keyword:"log",type:"code",language:"ts"},{name:"Raycast View Command",id:"raycast-view-command",text:`export default function Command() {
  return {cursor}
}`,keyword:"ray-vc",type:"code",language:"ts"},{name:"Export Functional Component",id:"export-functional-component",text:`export function Component() {
  return null
}`,keyword:"rfc",type:"code",language:"ts"},{name:"CSS Center Align",id:"css-center-align",text:`.selector {
  display: flex;
  align-items: center;
  justify-content: center;
}`,keyword:"css-ac",type:"code",language:"css"},{name:"Create and Open Folder in VSCode",id:"create-and-open-folder-vsc",text:"mkdir {clipboard} && code -r {clipboard}",keyword:"vscd-init",type:"code",language:"sh"},{name:"DOM Query Selector",id:"dom-query-selector",text:"document.querySelector({cursor})",keyword:"qs",type:"code",language:"ts"}],Z=[{id:"github-issue-template",name:"GitHub Issue Template",text:`## Expected Behavior

## Actual Behavior

## Steps to Reproduce the Problem

  1.
  1.
  1.

## Specifications

  - Version:
  - Platform:
  - Subsystem:
`,keyword:"gh-issue",type:"template",hasMarkdown:!0},{id:"github-pull-request-template",name:"GitHub Pull Request Template",text:`<!-- Thanks for opening a PR! Your contribution is much appreciated.-->

Fixes #

## Proposed Changes

  -
  -
  -
`,keyword:"gh-pr",type:"template",hasMarkdown:!0},{id:"github-table",name:"GitHub Table",text:`| Title1 | Title2 |
| ------- | ------- |
| Content1 | Content2 |
  `,keyword:"gh-table",type:"template",hasMarkdown:!0},{id:"github-details",name:"GitHub Details",text:`<details>
<summary>Title</summary>
{cursor}
</details>`,keyword:"gh-details",type:"template",hasMarkdown:!0},{id:"github-note",name:"GitHub Note",text:`> **Note**
> {cursor}`,keyword:"gh-note",type:"template",hasMarkdown:!0},{id:"github-warning",name:"GitHub Warning",text:`> **Warning**
> {cursor}`,keyword:"gh-warning",type:"template",hasMarkdown:!0}],ee=[{id:"apparently",name:"Apparantly \u2192 Apparently",text:"Apparently",keyword:"Apparantly",type:"spelling"},{id:"calendar",name:"Calender \u2192 Calendar",text:"Calendar",keyword:"Calender",type:"spelling"},{id:"definitely",name:"Definately \u2192 Definitely",text:"Definitely",keyword:"Definately",type:"spelling"},{id:"environment",name:"Enviroment \u2192 Environment",text:"Environment",keyword:"Enviroment",type:"spelling"},{id:"fluorescent",name:"Florescent \u2192 Fluorescent",text:"Fluorescent",keyword:"Florescent",type:"spelling"},{id:"government",name:"Goverment \u2192 Government",text:"Government",keyword:"Goverment",type:"spelling"}],te=[{id:"shrug",name:"Shrug",text:"\xAF\\_(\u30C4)_/\xAF",keyword:"shrug",type:"unicode"},{id:"happy",name:"Happy With It Unicode",text:"\u0298\u203F\u0298",keyword:"happy",type:"unicode"},{id:"cute",name:"Cute Unicode",text:"\u2022\u203F\u2022",keyword:"cute",type:"unicode"},{id:"tears-of-joy",name:"Tears Of Joy Unicode",text:"\u0CA5\u203F\u0CA5",keyword:"tears-of-joy",type:"unicode"},{id:"wink",name:"Wink Unicode",text:"\u25D5\u203F\u21BC",keyword:"wink",type:"unicode"},{id:"glasses-disapproval",name:"Glasses of Disapproval Unicode",text:"(-\u25A0_\u25A0)",keyword:"glasses-disapproval",type:"unicode"},{id:"meh",name:"Meh Unicode",text:"\u30FD(\u3002_\xB0)\u30CE",keyword:"meh",type:"unicode"},{id:"serious-look",name:"Serious Lookg Unicode",text:"(\u0CA0_\u0CA0)",keyword:"serious-look",type:"unicode"},{id:"flipping-table",name:"Flipping Table Unicode",text:"(\u256F\xB0\u25A1\xB0)\u256F\uFE35 \u253B\u2501\u253B",keyword:"flipping-table",type:"unicode"},{id:"putting-table",name:"Putting Table Back Unicode",text:"\u2533\u2501\u2533 \u30FD(\u0CA0\u0644\u035C\u0CA0)\uFF89",keyword:"putting-table",type:"unicode"},{id:"angry-cat",name:"Angry Cat Unicode",text:"(^._.^)\uFF89",keyword:"angry-cat",type:"unicode"},{id:"lenny",name:"Lenny Unicode",text:"( \u0361\xB0 \u035C\u0296 \u0361\xB0 ",keyword:"lenny",type:"unicode"},{id:"noggles",name:"Noggles",text:"\u2310\u25E8-\u25E8",keyword:"noggles",type:"unicode"}],ne=[{id:"current-date",name:"Current Date",text:"The date is {date}.",keyword:"date",type:"template"},{id:"current-time",name:"Current Time",text:"The current time is {time}.",keyword:"time",type:"template"},{id:"current-date-time",name:"Current Date and Time",text:"The current date and time is {datetime}.",keyword:"datetime",type:"template"},{id:"weekday",name:"Weekday",text:"Today is {day}.",keyword:"day",type:"template"},{id:"next-year",name:"1 Year from Today",text:"1 year from today will be {day +1y}.",keyword:"nextyear",type:"template"},{id:"day+4",name:"4 Days from Today",text:"4 days from today will be {day +4d}.",keyword:"day+4",type:"template"},{id:"week-number",name:"Week Number",text:'This week number is {date "w"}.',keyword:"wn",type:"template"},{id:"next-week-number",name:"Next Week Number",text:'Next week number is {date +7d "w"}.',keyword:"nwk",type:"template"}],oe=[{id:"email",name:"Email Address",text:"your@email.com",keyword:"email",type:"template"},{id:"address",name:"Address",text:"123 Quebec Road, Montreal, QC, H3A 2B2",keyword:"address",type:"template"},{id:"iban",name:"IBAN",text:"NL88INGB7356737620",keyword:"iban",type:"template"},{id:"vat",name:"VAT Number",text:"GB 943182327",keyword:"vat",type:"template"},{id:"crypto-wallet-address",name:"Crypto Wallet Address",text:"0x0000000000000000000000000000000000000000",keyword:"wa",type:"template"},{id:"cal-invite-link",name:"Cal.com Invite Link",text:"https://cal.com/username/30min",keyword:"cal",type:"template"},{id:"telegram-link",name:"Telegram Link",text:"https://t.me/yournickname",keyword:"tg",type:"template"},{id:"weekly-standup",name:"Weekly Standup Template",text:`Good morning \u2728 

*Last week:*
-  {cursor}

*Didn't do:*
-  

*This week:*
-  

*Blockers:*
-  

*Highlights:*
-  `,keyword:"standup",type:"template",hasMarkdown:!0}],$=[{name:"Symbols",id:"symbols",snippets:[...j,...Q,...J,...Y],icon:y.Icon.CommandSymbol},{name:"Arrows",id:"arrows",snippets:V,icon:y.Icon.Shuffle},{name:"Unicode",id:"unicode",snippets:te,icon:y.Icon.Keyboard},{name:"Date & Time",id:"dates",snippets:ne,icon:y.Icon.Calendar},{name:"Miscellaneous",id:"misc",snippets:oe,icon:y.Icon.Folder},{name:"Spelling",id:"spelling",snippets:ee,icon:y.Icon.Lowercase},{name:"Currency",id:"currency",snippets:z,icon:y.Icon.Coins},{name:"Coding",id:"coding",snippets:X,icon:y.Icon.CodeBlock},{name:"Feedback",id:"feedback",snippets:K,icon:y.Icon.SpeechBubble},{name:"GitHub",id:"github",snippets:Z,icon:"github-32"}];var U="https://github.com/raycast/extensions/edit/main/extensions/raycast-explorer";function b(n,e="sh"){let o="```";return`${o}${e}
${n}
${o}`}var a=require("react/jsx-runtime");function re({keyword:n,start:e,end:o}){return n&&`${e==="none"?"":e}${n}${o==="none"?"":o}`}function ie(n){return n.type==="code"?b(n.text,n.language):n.type==="template"&&n.hasMarkdown?`## Template

${b(n.text)}

## Markdown Output

${n.text}`:n.type==="template"?n.text.replace(/\{[^{}]+\}/g,"**$&**"):n.text}function P(n){let[e,o]=(0,m.useState)(n.launchContext??[]),[s,p]=(0,m.useState)(n.launchContext?"selected":""),k=(0,t.getPreferenceValues)();function f(r){e.includes(r)?o(e.filter(i=>i!==r)):o([...e,r])}let l=(0,m.useMemo)(()=>$.map(r=>({...r,snippets:r.snippets.map(i=>{let c=i.type==="spelling"?i.keyword:re({keyword:i.keyword,start:k.startModifier,end:k.endModifier});return{...i,keyword:c,keywords:(0,I.default)(i.text).replace(/\n/gi," ").split(" ").map(d=>d.trim()).filter(d=>d.length>0)}})})),[k]),D=(0,m.useMemo)(()=>{let r=l.flatMap(d=>d.snippets).filter(d=>e.includes(d.id)),i=t.environment.raycastVersion.includes("alpha")?"raycastinternal://":"raycast://",c=r.map(d=>{let{name:h,text:T,type:u,keyword:F}=d;return`snippet=${encodeURIComponent(JSON.stringify({name:h,text:T,keyword:F,type:u}))}`}).join("&");return`${i}snippets/import?${c}`},[e,l]),R=(0,m.useMemo)(()=>{let r=l.flatMap(u=>u.snippets).filter(u=>e.includes(u.id)),{extensionName:i,commandName:c,raycastVersion:d}=t.environment;return`${`${d.includes("alpha")?"raycastinternal://":"raycast://"}extensions/thomaslombart/${i}/${c}`}?launchContext=${encodeURIComponent(JSON.stringify(r.map(u=>u.id)))}`},[e,l]),S=(0,m.useMemo)(()=>s===""?l:s==="selected"?l.map(r=>({...r,snippets:r.snippets.filter(i=>e.includes(i.id))})):l.filter(r=>r.id===s),[s,l,e]),C=(0,m.useMemo)(()=>{let r=l.find(i=>i.id===s);return r?`All ${r.name} Snippets`:"All Snippets"},[s,l]),w=S.flatMap(r=>r.snippets).map(r=>r.id),M=e.filter(r=>w.includes(r)).length!==w.length,g=e.length>0;return(0,a.jsx)(t.List,{isShowingDetail:!0,searchBarPlaceholder:"Filter by name, category, or text",searchBarAccessory:(0,a.jsxs)(t.List.Dropdown,{tooltip:"Select Category",onChange:p,value:s,children:[(0,a.jsx)(t.List.Dropdown.Item,{icon:t.Icon.BulletPoints,title:"All Categories",value:""}),g?(0,a.jsx)(t.List.Dropdown.Item,{icon:t.Icon.CheckCircle,title:"Selected Snippets",value:"selected"}):null,(0,a.jsx)(t.List.Dropdown.Section,{title:"Categories",children:l.map(r=>(0,a.jsx)(t.List.Dropdown.Item,{icon:r.icon,title:r.name,value:r.id},r.id))})]}),children:S.map(r=>(0,a.jsx)(t.List.Section,{title:r.name,children:r.snippets.map(i=>{let c=e.includes(i.id);return(0,a.jsx)(t.List.Item,{title:i.name,subtitle:i.keyword,icon:c?{source:t.Icon.CheckCircle,tintColor:t.Color.Green}:void 0,keywords:[r.name,...i.keywords],detail:(0,a.jsx)(t.List.Item.Detail,{markdown:ie(i)}),actions:(0,a.jsxs)(t.ActionPanel,{children:[c?(0,a.jsx)(t.Action,{title:"Unselect Snippet",icon:t.Icon.Circle,onAction:()=>f(i.id)}):(0,a.jsx)(t.Action,{title:"Select Snippet",icon:t.Icon.CheckCircle,onAction:()=>f(i.id)}),g?(0,a.jsx)(t.Action.Open,{title:"Add to Raycast",icon:t.Icon.RaycastLogoNeg,target:D}):null,g?(0,a.jsx)(t.Action.CopyToClipboard,{title:"Copy URL to Share",shortcut:{modifiers:["cmd","shift"],key:"s"},icon:t.Icon.Link,content:R}):null,(0,a.jsxs)(t.ActionPanel.Section,{children:[M?(0,a.jsx)(t.Action,{title:`Select ${C}`,icon:t.Icon.CheckCircle,shortcut:{modifiers:["cmd","shift"],key:"a"},onAction:()=>o(d=>[...d.filter(h=>!w.includes(h)),...w])}):null,g?(0,a.jsx)(t.Action,{title:`Unselect ${C}`,icon:t.Icon.Circle,shortcut:{modifiers:["opt","shift"],key:"a"},onAction:()=>{o(e.filter(d=>!w.includes(d)))}}):null,(0,a.jsx)(t.Action.OpenInBrowser,{title:"Contribute",icon:t.Icon.PlusSquare,shortcut:{modifiers:["cmd","shift"],key:"c"},url:`${U}/data/snippets.ts`})]}),(0,a.jsx)(t.ActionPanel.Section,{children:(0,a.jsx)(t.Action.CopyToClipboard,{title:"Copy Snippet Text",shortcut:{modifiers:["cmd"],key:"."},content:i.text})})]})},i.id)})},r.name))})}
