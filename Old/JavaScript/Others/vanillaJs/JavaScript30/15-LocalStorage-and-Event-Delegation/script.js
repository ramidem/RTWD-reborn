const addItems = document.querySelector(".add-items");
const itemsList = document.querySelector(".plates");

// On page load...
// get `items` from storage. else, use empty array
const items = JSON.parse(localStorage.getItem("items")) || [];

function addItem(e) {
  e.preventDefault();

  // get the value of the form
  const text = this.querySelector("[name=item]").value;
  const item = {
    text,
    done: false
  };

  // push item to items
  items.push(item);

  // populate list
  // this will run everytime a new item is added
  // performance issue for bigger data
  populateList(items, itemsList);

  localStorage.setItem("items", JSON.stringify(items));

  // reset the input box
  this.reset();
}

function populateList(plates = [], platesList) {
  platesList.innerHTML = plates
    .map((plate, index) => {
      return `
        <li>
          <input type="checkbox" data-index=${index} id="item${index}" ${
        plate.done ? "checked" : ""
      }/>
          <label for="item${index}">${plate.text}</label>
        </li>
      `;
    })
    .join("");
}

function toggleDone(e) {
  // skip unless it is an input
  if (!e.target.matches("input")) return;

  // grab the input
  const element = e.target;

  // grab the data-index
  const index = element.dataset.index;

  // assign the opposite
  items[index].done = !items[index].done;

  // save
  localStorage.setItem("items", JSON.stringify(items));

  // update the page
  populateList(items, itemsList);
}

addItems.addEventListener("submit", addItem);
itemsList.addEventListener("click", toggleDone);

populateList(items, itemsList);
