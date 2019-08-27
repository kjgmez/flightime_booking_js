// $(document).ready(() => {
//     $( "#booked_time_link" ).click(handleBookedTimeClick);
// });
//
// function handleBookedTimeClick(event) {
//     event.preventDefault();
//     let user = $(this).attr('data-user-id');
//     $.get("/users/" + user + "/appointments.json", function (response) {
//         debugger;
//         response.forEach( appt => {
//             $("#show-appointments").innerHTML +=`<li> ${appt} </li>`
//         })
//
//     })
//
// }

$(document).ready(() => {
    $( "#booked_time_link" ).click(function(event) {
        event.preventDefault();
        // debugger;
        let user = $(this).attr('data-user-id');
        fetch(`/users/${user}/appointments.json`)
            .then(res => res.json())
            .then(data => data.map( appt => {
                $( "#booked_time_link" ).append(`<br> 
                <button id="individual" data-id="${appt.id}" href="users/${user}/appointments/${appt.id}">${new Date(appt.arrival_time)}</button>`)
            }))
        ;
    });
});

$(document).ready(() => {
    $( "button#individual" ).click(function(event) {
        event.preventDefault();
        debugger;
    });
});
//
// function test(data) {
//     console.log(data)
// }