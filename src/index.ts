const express = require('express');
const app = express();
const port = 8800;

app.use("/farmingServer", express.static(__dirname + '/packwizFiles/farmingServer'));

app.listen(port, () => {
    console.log(`Packwiz listening on port ${port}`)
});