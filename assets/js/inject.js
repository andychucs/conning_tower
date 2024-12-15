const OriginalXMLHttpRequest = XMLHttpRequest

XMLHttpRequest = class HackedXMLHttpRequest extends OriginalXMLHttpRequest {
    constructor() {
        super()

        this.method = 'GET'
        this.requestURL = ''
        this.request = ''
        this.responseHack = undefined
        this.responseTextHack = undefined
        this.responseXMLHack = undefined

        this.addEventListener('load', () => {
            SendToFlutter(this, 'load')
        })
        this.addEventListener('loadend', () => {
            if (!this.responseType || ['json', 'text'].includes(this.responseType)) {
                SendToFlutter(this, 'loadend')
            }
        })
        this.addEventListener('error', () => {
            SendToFlutter(this, 'error')
        })
    }

    open(method, requestURL, ...props) {
        this.method = method
        this.requestURL = new URL(requestURL, location.href).href
        super.open(method, requestURL, ...props)
    }

    send(body) {
        this.request = body
        super.send(body)
    }

    get response() {
        return this.responseHack || super.response
    }

    set response(response) {
        this.responseHack = response
    }

    get responseText() {
        return this.responseTextHack || super.responseText
    }

    set responseText(responseText) {
        this.responseTextHack = responseText
    }

    get responseXML() {
        return this.responseXMLHack || super.responseXML
    }

    set responseXML(responseXML) {
        this.responseXMLHack = responseXML
    }
}

function SendToFlutter(xhr, type) {
    let messageData;
    if (!xhr.responseURL.includes('/kcsapi/')) {
        return;
    }

    if (type === 'load') {
        messageData = {
            type: type,
            method: xhr.method,
            response_url: xhr.responseURL,
            request_url: xhr.requestURL,
            response: xhr.response,
            request: xhr.request,
            status: xhr.status,
            response_type: xhr.responseType
        };
    } else if (type === 'loadend') {
        messageData = {
            type: type,
            method: xhr.method,
            response_url: xhr.responseURL,
            request_url: xhr.requestURL,
            response: xhr.response,
            request: xhr.request,
            status: xhr.status,
            response_type: xhr.responseType
        };
    } else if (type === 'error') {
        messageData = {
            type: type,
            response_url: xhr.responseURL,
            request_url: xhr.requestURL,
            status: xhr.status
        };
    }

    const jsonString = JSON.stringify(messageData);
    kcMessage.postMessage(jsonString);
}