import places from 'places.js';

const initAutocompleteAddress = () => {
    const addressInputNew = document.getElementById('parking_address');
        if (addressInputNew) {
            places({ container: addressInputNew });
        }
};

export { initAutocompleteAddress };