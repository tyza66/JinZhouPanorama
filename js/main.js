//tyza66 洮羱芝闇

//控件取得
var sj = document.querySelector("#sj");
var wy = document.querySelector("#wy");
var vr = document.querySelector("#vr");

var t_home = document.querySelector("#t-home");
var t_sj = document.querySelector("#t-sj");
var t_vr = document.querySelector("#t-vr");

var home = document.querySelector("#p1");
var phone = document.querySelector("#p2");
var glass = document.querySelector("#p3");

//初始化
init();

//方法绑定
sj.addEventListener("click", () => {
    
});
wy.addEventListener("click", () => {
    t_home.className = "nav-link";
    t_sj.className = "nav-link active";
    t_vr.className = "nav-link";
    home.hidden = true;
    phone.hidden = false;
    glass.hidden = true;
});
vr.addEventListener("click", () => {
    t_home.className = "nav-link";
    t_sj.className = "nav-link";
    t_vr.className = "nav-link active";
    home.hidden = true;
    phone.hidden = true;
    glass.hidden = false;
});

t_home.addEventListener("click", () => {
    t_home.className = "nav-link active";
    t_sj.className = "nav-link";
    t_vr.className = "nav-link";
    home.hidden = false;
    phone.hidden = true;
    glass.hidden = true;
});
t_sj.addEventListener("click", () => {
    t_home.className = "nav-link";
    t_sj.className = "nav-link active";
    t_vr.className = "nav-link";
    home.hidden = true;
    phone.hidden = false;
    glass.hidden = true;
});
t_vr.addEventListener("click", () => {
    t_home.className = "nav-link";
    t_sj.className = "nav-link";
    t_vr.className = "nav-link active";
    home.hidden = true;
    phone.hidden = true;
    glass.hidden = false;
});

//方法集
function init(){
    phone.hidden = true;
    glass.hidden = true;
}