$ = element => document.querySelector(element);

activities = $("#activities-sider")
entities = $("#entities-sider")

function slide(i) {
    if (i) {
activities = $("#activities-sider")
        activities.style.height = "0vh"
        entities.style.height = "calc(100vh - 80px)"
    }   
    else {
        entities.style.height = "0vh"
        activities.style.height = "calc(100vh - 80px)"
    }
}

slide(0)