function googleLogin(response) {
    // Ghi log toàn bộ response vào console
    console.log(response);

    // Gọi hàm parseJwt để phân tích token credentials từ response
    console.log(parseJwt(response.credential));
}

function parseJwt(token) {
    var base64Url = token.split('.')[1];
    var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
    var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
        return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
    }).join(''));

    return JSON.parse(jsonPayload);
}