function ajax(src, callback) {
  const xhr = new XMLHttpRequest();
  xhr.open("GET", src);
  xhr.onload = () => {
    if (xhr.status === 200) {
      let data = JSON.parse(xhr.responseText);
      console.log(data);
      return callback(data);
    }
  };
  xhr.send();
}

function render(data) {
  const product = document.getElementById("product");
  data.map((item) => {
    const section = document.createElement("section");
    product.appendChild(section);
    section.innerHTML = `
    <h2>${item.name}</h2>
    <p>價格：${item.price}</p>
    <p>${item.description}</p>
    `;
  });
}

ajax(
  "https://appworks-school.github.io/Remote-Assignment-Data/products",
  function (response) {
    render(response);
  }
);
