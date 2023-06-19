function setup() {
    const url = "http://localhost:5227/api/Request";

    fetch(url, {
        method: "POST",
        body: JSON.stringify("SELECT TABLE_NAME FROM information_schema.tables WHERE TABLE_NAME LIKE 'tb_%'"),
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
        },
    })
    .then((response) => response.json())
    .then((response) => {
        console.log(response);
        const json = JSON.parse(response);
        const tables = {table: []};
        const hiddenTables = ["tb_user", "tb_misterio", "tb_pontuacao", "tb_cofre", "tb_dica"];
        json.table.forEach(table => {
            if (!hiddenTables.includes(table.TABLE_NAME)) {
                tables.table.push({TABLE_NAME: table.TABLE_NAME});
            }
        });
        dynamicTable(document.querySelector(".list-table"), tables);
    });

    document.querySelector(".nota-texto").value = "";
}

function query() {
    let input = document.querySelector(".query").value;

    let url = "";

    if(input.toUpperCase().startsWith("INSERT")) {
        url = "http://localhost:5227/api/Request/InsertQuery";
    }
    else {
        url = "http://localhost:5227/api/Request";
    }

    fetch(url, {
        method: "POST",
        body: JSON.stringify(input),
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
        },
    })
    .then((response) => response.json())
    .then((json) => {
        console.log(json)
        document.querySelector(".data-table").innerHTML = ""
        document.querySelector(".error").innerHTML = ""
        if(handleResponse(json, input)) {
            dynamicTable(document.querySelector(".data-table"), JSON.parse(json));
        }
    })
    .catch((ev) => {
        document.querySelector(".error").innerHTML = ev;
    })
}

function handleResponse(json, input) {
    if(json.includes(`"Code":"1064"`)) {
        document.querySelector(".error").innerHTML = JSON.parse(json)["Message"];
        return false;
    }

    if(json.includes(`"Code":"1062"`) && input.includes("tb_solucao")) {
        alert("Você Encontrou o Culpado, Prabéns!");
        return false;
    }
    else if(json.includes(`"Code":"1062"`)) {
        document.querySelector(".error").innerHTML = JSON.parse(json)["Message"];
        return false;
    }

    if(json.includes(`"code:"`)) {
        document.querySelector(".error").innerHTML = JSON.parse(json)["Message"]
        return false;
    }

    if(input.toUpperCase().includes("SELECT")) {
        return true;
    }

    return false;
}


function dynamicTable(container, dados) {
    const tabela = document.createElement('table');
    tabela.classList.add('tabela-dinamica');

    const cabecalho = document.createElement('tr');
    for (const chave in dados.table[0]) {
        const th = document.createElement('th');
        th.classList.add("list-head");
        th.textContent = chave.toUpperCase();
        cabecalho.appendChild(th);
    }
    tabela.appendChild(cabecalho);

    dados.table.forEach((item) => {
        const linha = document.createElement('tr');
        for (const chave in item) {
            const celula = document.createElement('td');
            celula.textContent = item[chave];
            linha.appendChild(celula);
        }
        tabela.appendChild(linha);
    });

    container.appendChild(tabela);

    return tabela;
}

// Adiciona comentários do projeto
document.querySelector("#show_comments_button").addEventListener("click", function() {
    const commentsDiv = document.querySelector("#project_comments");
    if (commentsDiv.style.display === "none") {
        commentsDiv.style.display = "block";
    } else {
        commentsDiv.style.display = "none";
    }
});

document.querySelector("#notepad").addEventListener("click", function() {
    const commentsDiv = document.querySelector("#project_notepad");
    if (commentsDiv.style.display === "none") {
        commentsDiv.style.display = "block";
    } else {
        commentsDiv.style.display = "none";
    }
});

document.querySelector(".add-nota").addEventListener("click", () => {
    const state = document.querySelector(".item-nota").style.display;
    if (state == "flex") {
        document.querySelector(".item-nota").style.display = "none";
    } else {
        document.querySelector(".item-nota").style.display = "flex";
    }
});

document.querySelector(".anotar").addEventListener("click", () => {
    if (document.querySelector(".nota-texto").value != "") {
        const item = document.createElement("li");
        item.innerHTML = document.querySelector(".nota-texto").value;
        document.querySelector("#project_notepad ul").appendChild(item);
        document.querySelector(".nota-texto").value = "";
    }
});

document.addEventListener("mouseup", (event) => {
    let container = document.querySelector("#project_comments");
    if (!container.contains(event.target)) {
        container.style.display = "none";
    }
});

document.addEventListener("mouseup", (event) => {
    let container = document.querySelector("#project_notepad");
    if (!container.contains(event.target)) {
        container.style.display = "none";
    }
});