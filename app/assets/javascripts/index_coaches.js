jQuery(function() {
    let coaches;
    coaches = $('#appointment_coach_id').html();
    console.log(coaches);
    byebug
    return $('#appointment_location_id').change(function() {
        let location, options;
        location = $('#appointment_location_id :selected').text();
        options = $(coaches).filter("optgroup[label=" + location + "]").html();
        console.log(options);
        if (options) {
            return $('#appointment_coach_id').html(options);
        } else {
            return $('#appointment_coach_id').empty();
        }
    });
});