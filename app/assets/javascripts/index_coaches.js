jQuery(function() {
    let choaches;
    coaches = $('#appointment_coach_id').html();
    console.log(coaches);
    byebug
    return $('#appointment_location_id').change(function() {
        var country, options;
        country = $('#person_country_id :selected').text();
        options = $(states).filter("optgroup[label=" + country + "]").html();
        console.log(options);
        if (options) {
            return $('#person_state_id').html(options);
        } else {
            return $('#person_state_id').empty();
        }
    });
});