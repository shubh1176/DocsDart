const express = require('express');
const mongoose = require("mongoose");
const PORT = process.env.PORT | 2001;
const app = express();
const DB = "mongodb+srv://shubh42003:1176harekrishna@docsdart.icziixf.mongodb.net/?retryWrites=true&w=majority";

mongoose.connect(DB).then(() => {
    console.log('connected to server');
}).catch((err) => {
    console.log(err);
});


app.listen(PORT, "0.0.0.0", function () {
    console.log('connected at port 2001');
});