window.capture = () => (async function () {
    {
        console.log("kc_capture");
        let canvas = document.querySelector('canvas');
        console.log(canvas);
        requestAnimationFrame(() => {
            {
                if (canvas != null) {
                    let dataurl = canvas.toDataURL('image/png');
                    kcCapture.postMessage(dataurl);
                }
            }
        });
    }
})()