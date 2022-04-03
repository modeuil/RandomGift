import { Application } from "@hotwired/stimulus"

const application = Application.start()

const name = document.querySelector('.special')
const nameEmail = document.querySelector('.nameEmail')
let counter = 1


console.log("here : ", name)
name.addEventListener('click', (e)=>{
    e.preventDefault();
    counter += 1;

    const btn_delete = document.createElement('button')
    const i_name= document.createElement("i");
    const input_name = document.createElement("input");
    const input_email = document.createElement("input");
    const i_email= document.createElement("i");
    const div_user_profile = document.createElement('div');

    nameEmail.appendChild(div_user_profile);
    div_user_profile.appendChild(i_name);
    div_user_profile.appendChild(input_name)

    div_user_profile.appendChild(i_email);
    div_user_profile.appendChild(input_email);
    div_user_profile.appendChild(btn_delete)


    div_user_profile.className = "flex"
    i_name.className = "material-icons prefix"
    i_name.textContent += "account_circle"
    i_email.className = "material-icons prefix"
    i_email.textContent += "email"
    input_name.name = `[${counter}][name]`
    input_email.name = `[${counter}][email]`
    btn_delete.textContent += "remove"
    btn_delete.className = "remove"
    console.log('hello')
    removeFunction.addEventListener('click', (e) =>{
        e.preventDefault()
        console.log("delete")
    })
})


const removeFunction = document.querySelector('.remove')

console.log(removeFunction)


// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
