$(document).ready(() => {
    $( "#booked_time_link" ).click(handleBookedTimeClick);
});

function handleBookedTimeClick(event) {
    event.preventDefault();
    let user = $(this).attr('data-user-id');
    $.get("/users/" + user + "/appointments.json", response => {
        response.forEach( appt => {
            $("#show-appointments").innerHTML +=`<li> ${appt.location.name} </li>`
        })

    })

}

// $(document).ready(() => {
//     $( "#booked_time" ).click(function(event) {
//         event.preventDefault();
//         let id = $(this).attr('data-id');
//         let user = $(this).attr('user-id');
//         let url = "/users/" + user + "/appointments/" + id;
//         // debugger;
//         fetch(url)
//             .then(response => test(response.json()))
//         // .then(data => {debugger})
//         ;
//     });
// });
//
// function test(data) {
//     console.log(data)
// }