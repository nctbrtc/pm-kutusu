let request = fetch('https://www.r10.net/private.php?do=downloadpm&dowhat=txt')
  .then(response => response.arrayBuffer())
  .then(buffer => {
    let decoder = new TextDecoder("iso-8859-9");
    let text = decoder.decode(buffer);
    console.log(text);
  });
