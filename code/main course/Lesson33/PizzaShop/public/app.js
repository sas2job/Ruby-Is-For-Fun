function something(){
    var x = window.localStorage.getItem('bbb');

    x = x * 1 + 1;

    window.localStorage.setItem('bbb', 555);
    
    alert(x);
}