const alignCSS = document.createElement('style')
alignCSS.innerHTML = `html {
  overflow: hidden;
  background-color: #000;
}
#w, #main-ntg {
  position: absolute !important;
  top: 0;
  left: 0;
  z-index: 100;
  margin-left: 0 !important;
  margin-top: 0 !important;
  background-color: #000;
}
#game_frame {
  width: 1200px !important;
  position: absolute;
  top: 0px;
  left: 0;
  background-color: #000;
}
.naviapp {
  z-index: -1;
}
#ntg-recommend {
  display: none !important;
}
#spacing_top {
  display: none;
}
#alert {
  left: 270px !important;
  top: 83px !important;
  border: 0;
}
#flashWrap {
  background-color: #000;
  z-index: 100;
}
`

window.align = () => {
    document.body.appendChild(alignCSS)
    window.scrollTo(0, 0)
}

window.unAlign = () => {
    if (document.body.contains(alignCSS)) {
        document.body.removeChild(alignCSS)
    }
    if (document.body.contains(flashWrapCSS)) {
        document.body.removeChild(flashWrapCSS)
    }
}

const flashWrapCSS = document.createElement('style')
flashWrapCSS.innerHTML = `#flashWrap {
    transform-origin: center top;
    position: fixed;
    z-index: 100;
    background-color: #000;
}
`

window.resizeOnLargeScreen = () => {
    let windowWidth = window.innerWidth
    let scaleRatio = windowWidth / 1200
    flashWrapCSS.style.transform = 'scale('+ scaleRatio + ')'
    flashWrapCSS.style.left = (windowWidth - 1200) / 2 +'px'
    document.body.appendChild(flashWrapCSS)
    window.scrollTo(0, 0)
}

window.resizeOnLargeScreen = () => {
    let windowWidth = window.innerWidth
    let scaleRatio = windowWidth / 1200
    console.log('width:'+windowWidth+' scale:'+scaleRatio)
    let flashWrap = document.getElementById('flashWrap')
    flashWrap.style.transformOrigin = 'center top'
    flashWrap.style.position = 'fixed'
    flashWrap.style.transform = 'scale('+ scaleRatio + ')'
    flashWrap.style.left = (windowWidth - 1200) / 2 +'px'
    flashWrap.style.zIndex = '100'
    document.getElementById('sectionWrap').style.display = 'none';
    console.log('width:'+windowWidth+' scale:'+scaleRatio)
}
