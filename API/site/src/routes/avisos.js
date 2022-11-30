var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/", function (req, res) {
    avisoController.testar(req, res);
});

router.get("/listar", function (req, res) {
    avisoController.listar(req, res);
});

router.get("/listar/:fkUsuario", function (req, res) {
    avisoController.listarPorUsuario(req, res);
});

router.post("/publicar/:fkUsuario", function (req, res) {
    avisoController.publicar(req, res);
});


module.exports = router;