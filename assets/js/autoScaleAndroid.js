(($, _) => {
    const html =$.documentElement,
        gf = $.getElementById('game_frame');
    if (!gf) return;
    const gs = gf.style,
        gw = gf.offsetWidth,
        gh = gw * .6;
    let vp = $.querySelector('meta[name=viewport]'),
        t = 0;
    vp || (vp = $.createElement('meta'), vp.name = 'viewport', $.querySelector('head').appendChild(vp));
    vp.content = 'width=' + gw;
    // 'orientation' in _ && html.webkitRequestFullscreen && html.webkitRequestFullscreen();
    html.style.overflow = 'hidden';$.body.style.cssText = 'min-width:0;padding:0;margin:0;overflow:hidden;margin:0';$.querySelector('.dmm-ntgnavi').style.display = 'none';$.querySelector('.area-naviapp').style.display = 'none';
    gs.position = 'fixed';
    gs.marginRight = 'auto';
    gs.marginLeft = 'auto';
    gs.top = '-16px';
    gs.right = '0';
    gs.zIndex = '100';
    gs.transformOrigin = 'center top';
    if (!_.kancolleFit) {
        const k = () => {
            const w = html.clientWidth,
                h = _.innerHeight;
            w / h < 1 / .6 ? gs.transform = 'scale(' + w / gw + ')' : gs.transform = 'scale(' + h / gh + ')';
            w < gw ? gs.left = '-' + (gw - w) / 2 + 'px' : gs.left = '0'
        };
        _.addEventListener('resize', () => {
            clearTimeout(t);
            t = setTimeout(k, 10)
        });
        _.kancolleFit = k
    }
    kancolleFit()
})(document, window)