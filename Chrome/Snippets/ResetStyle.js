var styleStr = `
   * {
     background-color: #2a2a2a!important;
     border-color: #2a2a2a!important;
     color: #86c797!important;
   }
`;
//rgb(134, 199, 151)
// text-decoration: line-through!important;

var trickStyle = document.createElement('style');
trickStyle.id = 'igoist_reset_site_style';
trickStyle.type = 'text/css';
trickStyle.innerHTML = styleStr;

document.body.insertBefore(trickStyle, document.body.children[0]);
