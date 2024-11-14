var express = require("express");
var app = express();

const PORT = process.env.HOST_PORT || process.env.PORT || 9000;

app.get("/", function (req, res) {
	const json = {
		response:
			"DEV_BRANCH - Hello From Thetips4you changed_new_" + process.env.TEST_NODE,
	};
	res.json(json);
});

app.get("/will", function (req, res) {
	res.send('{ "response": "Hello World" }');
});
app.get("/ready", function (req, res) {
	res.send('{ "response": " Great!, It works!" }');
});
app.listen(PORT, () => console.log("Listen to: " + PORT));
module.exports = app;
