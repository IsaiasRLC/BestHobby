var database = require("../database/config");

function buscarUltimasMedidas() {

    instrucaoSql = `select f.nome, count(fkUsuario) as contagem from voto join franquia f on fkFranquia = idFranquia group by fkFranquia;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);

    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
}
