function something(){
    var x = window.localStorage.getItem('aaa');

    x = x + 1;

    window.localStorage.setItem('aaa', 555);
    
    alert(x);
}