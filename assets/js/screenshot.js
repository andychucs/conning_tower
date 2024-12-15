(function () {
    const msg = 'kc_capture';
    const origin = "*";
    const doc = document.getElementById("game_frame");
    if (doc) {
        doc.contentWindow.postMessage(msg, origin)
    } else {
        document.getElementsByTagName("iframe")[0].contentWindow.postMessage(msg, origin)
    }
    return "done"
})()