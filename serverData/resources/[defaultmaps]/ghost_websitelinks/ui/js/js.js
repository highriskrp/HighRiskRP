// Function to toggle the menu visibility based on Lua messages
function ToggleMenu(show) {
    var menu = document.querySelector('.cards');
    if (show) {
        menu.classList.remove('hidden');
        console.log("Menu shown");
    } else {
        menu.classList.add('hidden');
        console.log("Menu hidden");
    }
}

// Function to close the menu and notify the FiveM client
function closeMenu() {
    fetch(`https://${GetParentResourceName()}/exit`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify({})
    }).then(() => {
        console.log("Menu closed");
    }).catch(err => {
        console.error("Error closing menu:", err);
    });
}

document.addEventListener('DOMContentLoaded', function() {
    console.log("DOM fully loaded and parsed");

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            ToggleMenu(item.status);
        }
    });

    // Function to handle card click
    const handleCardClick = (event) => {
        const url = event.currentTarget.getAttribute('data-url');
        if (url) {
            console.log(`Opening URL: ${url}`);
            window.invokeNative('openUrl', url);
        }
    };

    // Adding click listeners to cards based on 'data-url' attribute
    document.querySelectorAll('.card.content').forEach(card => {
        card.addEventListener('click', handleCardClick);
    });

    // ESC key listener
    document.addEventListener('keydown', function (event) {
        if (event.key === "Escape") {
            console.log("Escape key pressed");
            closeMenu();
        }
    });
});
