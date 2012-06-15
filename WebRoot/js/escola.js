var escola = {
	init : function() {
		this.boxDialog.init();
	},
	optionProfessor : function (idSerie) {
		var isCheckboxChecked = $("."+ idSerie).is(":checked");
		if( isCheckboxChecked ) {
			$("#"+ idSerie).find(".materias").show();
		} else {
			$("#"+ idSerie).find(".materias").hide();
		}
	},
	formDelete : function( elementDelete ) {
		$form = $("#formDelete"),
			novaActionDelete = $form.attr("action").replace("/?", "/"+ elementDelete);
		$form.attr("action", novaActionDelete);
		this.boxDialog.show({
			title : "Confirmação",
			message : "Tem certeza que deseja exluir?",
			width : 250,
			height : 150,
			buttons : {
				"Sim" : function (){ $form.submit(); }, 
				"Não" : function (){ escola.boxDialog.close(); }
			}
		});
	},
	boxDialog : {
		_$ : null,
		init : function() {
			this._$ = $("#dialog");
		},
		close : function() {
			$("#dialog").dialog("close").dialog("destroy").html("");
		},
		show : function( data ) {
			$("#dialog").html( data.message )
				.dialog({
				resizable 	: false,
				modal 		: (data.modal === undefined) || data.modal,
				message 	: data.message,
				title 		: data.title || "Informação do sistema",
				width 		: data.width || 350,
				height 		: data.height || 200,
				buttons 	: data.buttons || {
					Fechar	: function (){ escola.boxDialog.close(); }
				}
			});
		}
	}
};
$(function() {
	escola.init();
});