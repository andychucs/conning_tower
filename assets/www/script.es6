const input = document.querySelector('#url');
const goButton = document.querySelector('#navigate');

function go() {
    let url = document.getElementById('url').value;
    const domainRegex = /^((https?:\/\/)?[\w-]+(\.[\w-]+)+\.?(:\d+)?(\/\S*)?)$/;
    if (domainRegex.test(url)) {
        if (url.substring(0, 7).toLowerCase() === "http://" || url.substring(0, 8).toLowerCase() === "https://") {
            window.open(url, '_blank');
        } else {
            url = "http://" + url;
            window.open(url, '_blank');
        }
    } else {
        const searchUrl = `https://www.google.com/search?q=${encodeURIComponent(url)}`;
        window.open(searchUrl, '_blank');
    }
}

input.addEventListener('keypress', (event) => {
    if (event.key === 'Enter') {
        go();
    }
});