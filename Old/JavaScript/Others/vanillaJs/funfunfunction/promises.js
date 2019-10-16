function loadedImage(url) {
  return new Promise((resolve, reject) => {
    let image = new Image();

    image.onload = function() {
      resolve(image);
    };

    image.onerror = function() {
      let message = `Could not load image at ${url}`;

      reject(new Error(message));
    };

    image.src = url;
  });
}

let addImg = src => {
  let imageElement = document.createElement("img");
  imageElement.src = src;
  document.body.appendChild(imageElement);
};

// loadedImage("https://bukk.it/404.gif").then(img1 => {
//   addImg(img1.src);

//   loadedImage("https://bukk.it/500.jpg").then(img2 => {
//     addImg(img2.src);

//     loadedImage("https://bukk.it/9000.gif").then(img2 => {
//       addImg(img2.src);
//     });
//   });
// });

Promise.all([
  loadedImage("https://bukk.it/404.gif"),
  loadedImage("https://bukk.it/500.jpg"),
  loadedImage("https://bukk.it/9000.gif")
])
  .then(images => {
    images.forEach(img => addImg(img.src));
  })
  .catch(error => {
    // error here
  });
