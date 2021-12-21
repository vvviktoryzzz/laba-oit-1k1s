var a1, a2;
function fun1(){
a1 = window.open("about:blank", "Window1");
}

function fun2(){
    a1.close();
}

function fun3(){
a2 = window.open("about:blank", "window2");
}

function fun4(){
    a2.close();
}

function fun5(){
a1.document.write(a1.name + ' : это первое окно');
}

function fun6(){
a2.document.write(a2.name + ' : это второе окно');
}