var step = 1

function slideit() {
    document.images.slide.src = eval("img" + step + ".src")

    if (step < 5)
        step++

    else
        step = 1

    setTimeout(slideit(), 25)
}

slideit()