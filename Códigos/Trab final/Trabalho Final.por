registro aluno{
cadeia nome, endereco, curso
inteiro cpf, telefone, matricula
real IAA
}
aluno aluno[30]
funcao preencher(){
	inteiro x
	para(x=0;x<30;x++){
		aluno[x].nome=' '
		aluno[x].matricula=0
	}
}
funcao criar(){
	inteiro cont=0,i
		para(i=0;i<30;i++){
			se(cont==0 e aluno[i].matricula==0){
				escreva("insira o nome do aluno\n")
				leia(aluno[i].nome)
				escreva("insira o CPF do aluno\n")
				leia(aluno[i].cpf)
				escreva("insira o endereco do aluno")
				leia(aluno[i].endereco)
				escreva("insira a matricula do aluno")
				leia(aluno[i].matricula)
				escreva("insira qual curso o aluno cursa")
				leia(aluno[i].curso)
				escreva("insira o telefone do aluno")
				leia(aluno[i].telefone)
				escreva("insira o IAA do aluno")
				leia(aluno[i].IAA)
				cont = cont + 1
				escreva("aluno adicionado")
			}
		}
}
funcao listar(){
	inteiro n
	para(n=0;n>30;n++){
		se(aluno[n].matricula != 0){
			escreva("nome: "aluno[n].nome,"\n")
		}
	}
}
funcao excluir(){
	inteiro i
	cadeia alunonome
	escreva("qual aluno deseja excluir?\n")
	leia(alunonome)
	para(i=0;i<30;i++){
		se(aluno[i].nome == alunonome){
			aluno[x].nome = ' '
			aluno[x].matricula = 0
			escreva("aluno excluido")
		}
	}
}
funcao localizaraluno(){
	inteiro i
	cadeia x
	escreva("qual aluno deseja saber as informacoes?\n")
	leia(x)
	para(i=0;i<30;i++){
		se(x == aluno[i].nome){
			escreva("nome: ", aluno[i].nome,"\n")
			escreva("CPF: ", aluno[i].cpf,"\n")
			escreva("endereco: ", aluno[i].endereco,"\n")
			escreva("matricula: ", aluno[i].matricula,"\n")
			escreva("curso: ", aluno[i].curso,"\n")
			escreva("telefone: ", aluno[i].telefone,"\n")
			escreva("IAA: ", aluno[i].IAA,"\n")
		}
	}
}
funcao localizarmatricula(){
	inteiro i, x
	escreva("de qual matricula deseja saber as informacoes")
	para(i=0;i<30;i++){
		se(x == aluno[i].matricula){
			escreva("nome: ", aluno[i].nome,"\n")
			escreva("CPF: ", aluno[i].cpf,"\n")
			escreva("endereco: ", aluno[i].endereco,"\n")
			escreva("matricula: ", aluno[i].matricula,"\n")
			escreva("curso: ", aluno[i].curso,"\n")
			escreva("telefone: ", aluno[i].telefone,"\n")
			escreva("IAA: ", aluno[i].IAA,"\n")
		}
	}
}
funcao inicio(){
	preencher()
	escreva("menu:\n")
	escreva("1) incluir aluno\n")
	escreva("2) listar todos os alunos\n")
	escreva("3) excluir aluno\n")
	escreva("4) localizar aluno por nome\n")
	escreva("5) localizar aluno por matricula\n")
	escolha(x){
		caso 1: criar()
			pare
		caso 2: listar()
			pare
		caso 3: excluir()
			pare
		caso 4: localizaraluno()
			pare
		caso 5: localizarmatricula()
			pare
	}
}