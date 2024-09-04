require('betterf').setup({
    -- all labels to use in order, the last character is used for accessing overflow indices
    labels = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",";"},

    -- the highlight color for the markers
    color="#ff0000",

    -- forward and backward search mappings
    mappings={
        "f", "F"
    },
})
