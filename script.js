function elementSetup(tag, parent, id, innerText, attributes, values, classes) {
    let element = document.createElement(`${tag}`);

    // set necessary attributes of element
    if (id) {
        element.id = id;
    }
    if (classes) {
        element.className = classes;
    }
    if (innerText) {
        element.innerText = innerText;
    }
    if ((attributes) && (values)) {
        for (let i = 0; i < attributes.length; i++) {
            element.setAttribute(attributes[i], values[i]);
        }
    }

    parent.appendChild(element);

    return element;
}

function changeCurrentOnderwerp(onderwerp) {
    let close = false;
    if (!document.getElementById(onderwerp).classList.contains("hidden")) {
        close = true;
    }

    for (const onderwerp2 in standpunten) {
        let onderwerpDiv = document.getElementById(onderwerp2);
        if (!onderwerpDiv) {
            console.log("something went wrong changing opened onderwerp");
            return 1;
        }

        if (!onderwerpDiv.classList.contains("hidden")) {
            onderwerpDiv.classList.add("hidden");
        }
    }

    if (!close) {
        document.getElementById(onderwerp).classList.remove("hidden");
    }

}

function toggleStandpunt(onderwerp, party) {
    let standpuntElement = document.getElementById(`${onderwerp}:${party}`);

    if (standpuntElement.classList.contains("hidden")) {
        standpuntElement.classList.remove("hidden");
    } else {
        standpuntElement.classList.add("hidden");
    }
}
const onderwerpDisplayNames = {"eu": "EU", "immigratie": "Immigratie", "inkomen": "Inkomen", "klimaat_en_milieu": "Klimaat en Milieu", "onderwijs": "Onderwijs", "pensioen": "Pensioen", "veiligheid_en_criminaliteit": "Veiligheid en Criminaliteit", "woonmarkt": "Woonmarkt"};

const openedOnderwerp = document.getElementById("openedOnderwerp");
const mainElement = document.querySelector("main");
const onderwerpButtonsDiv = elementSetup("div", mainElement, false, false, false, false, "-order-1 bg-red rounded-lg divide-x divide-gray")
for (const onderwerp in standpunten) {
    elementSetup("button", onderwerpButtonsDiv, false, onderwerpDisplayNames[onderwerp], ["name"], [onderwerp], "p-2")
        .addEventListener("click", function() {
            changeCurrentOnderwerp(onderwerp);
        })

    let onderwerpDiv = elementSetup("div", openedOnderwerp, onderwerp, false, false, false, "hidden flex flex-col items-center");
    elementSetup("h2", onderwerpDiv, false, onderwerpDisplayNames[onderwerp], false, false, "text-4xl font-bold");
    const partyDivsDiv = elementSetup("div", onderwerpDiv, false, false, false, false, "flex items-start flex-wrap");
    for (const standpunt of standpunten[onderwerp]) {
        let partyDiv = elementSetup("div", partyDivsDiv, false, false, false, false, "flex flex-col items-center divide-y bg-red-400 rounded-lg max-w-40 min-h-[4.5rem] m-0.5 bg-darkred")

        elementSetup("button", partyDiv, false, standpunt.partij, false, false, "bg-red-400 rounded-lg min-w-40 min-h-[4.5rem]")
            .addEventListener("click", function() {
                toggleStandpunt(onderwerp, standpunt.partij);
            })
        elementSetup("p", partyDiv, `${onderwerp}:${standpunt.partij}`, standpunt.standpunt, false, false, "hidden break-all hyphens-auto m-2");
    }
}