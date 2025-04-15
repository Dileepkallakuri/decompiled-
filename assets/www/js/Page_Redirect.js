function liverates_Redirect() {
    localStorage.LastPageExited = "index.html";
    window.location.href = "index.html";
}

function Forward_Redirect() {
    localStorage.LastPageExited = "index_Forward.html";
    window.location.href = "index_Forward.html";
}

function Messages_Redirect() {
    localStorage.LastPageExited = "Message.html";
    window.location.href = "Message.html";
}