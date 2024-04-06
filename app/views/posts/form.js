var butt = document.getElementsByClassName('collapsible')
var i

for(i = 0; i < butt.length; i++ ) {
butt[i].addEventListener('click', function() {
    let field = this.nextElementSibling
    if (field.style.display == 'block' ) {
    field.style.display = 'none'
    } else {
    field.style.display = 'block'
    }
})
}

