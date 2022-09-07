programa
{
	inclua biblioteca Util --> ut
	
	logico fechar = verdadeiro, invalido = falso, confVoo[12]
	inteiro op, i, j = 0, confNumvoo, cadastro = 0
	inteiro numVoo[12] = {4506, 1668, 1217, 2463, 4543, 3085, 5961, 5660, 2585, 1243, 5282, 3046}
	inteiro lugares[12] = { 6, 5, 4, 7, 0, 11, 15, 0, 2, 3, 9, 8}
	cadeia destino[12], origem[12], confDestino, confOrigem, origemDestino = "*-=+", destinoOrigem = "*-=+"
	
	funcao inicio()
	{	

		para(i = 0; i < 2; i++){
			escreva("Iniciando sistema .")
			ut.aguarde(300)
			limpa()
			escreva("Iniciando sistema . .")
			ut.aguarde(300)
			limpa()
			escreva("Iniciando sistema . . .")
			ut. aguarde(300)
			limpa()
		}

		
		faca{		
			
			invalido = falso
			
			escreva("============\n")
			escreva("=== jMCW ===\n")
			escreva("============\n\n")
			escreva("[1] Consultar\n[2] Efetuar reserva\n[3] Sair do sistema\n\nDigite a opção desejada:")
			leia(op)
			limpa()

			escolha(op){
				caso 1:

					se(cadastro == 0){
						escreva("Nenhuma reserva efetuada")
						ut.aguarde(2500)
						limpa()
					}
					senao{
						faca{
									
							escreva("[1] Por número do voo\n[2] Por origem\n[3] Por destino\n\nDigite a opção desejada:")
							leia(op)
							limpa()
						}
						enquanto(op < 1 ou op > 3)
						
						se(op == 1){
							escreva("Digite o número de voo:")
							leia(confNumvoo)
							limpa()
															
							para(i = 0; i < 12; i++){
								se(confNumvoo == numVoo[i]){
										
									escreva("Origem do voo:", origem[i],"\nDestino do voo:", destino[i],"\nNúmero de voo:", numVoo[i])
									se(confVoo[i] == verdadeiro){
										escreva("\nVoo reservado")
									}
									senao{
										escreva("\nVoo não reservado")
									}
									invalido = verdadeiro
								}
							}
							se(invalido == falso){
								escreva("Voo inexistente")			
							}
							ut.aguarde(2500)
							limpa()						
						}
						se(op == 2){
							escreva("Digite a origem do voo:")
							leia(confOrigem)
							limpa()
			
							para(i = 0; i < 12; i++){
								se(confOrigem == origem[i]){
										
									escreva("Origem do voo:", origem[i], "\nDestino do voo:", destino[i], "\nNúmero de voo:", numVoo[i])
									se(confVoo[i] == verdadeiro){
										escreva("\nVoo reservado")
									}
									senao{
										escreva("\nVoo não reservado")
									}
									invalido = verdadeiro
								}
							}
							se(invalido == falso){
								escreva("Voo inexistente")
							}
							ut.aguarde(2500)
							limpa()
						}
						se(op == 3){
							escreva("Digite o destino do voo:")
							leia(confDestino)
							limpa()
								
							para(i = 0; i < 12; i++){
								se(confDestino == destino[i]){	
									escreva("\nOrigem do voo:", origem[i], "\nDestino do voo:", destino[i], "\nNúmero de voo:", numVoo[i])
									se(confVoo[i] == verdadeiro){
										escreva("\nVoo reservado")
									}
									senao{
										escreva("\nVoo não reservado")
									}
									invalido = verdadeiro
									}	
								}
							se(invalido == falso){
								escreva("Voo inexistente")			
							}
							ut.aguarde(2500)
							limpa()
						}
					}
				pare			
			caso 2:

				escreva("Digite o local de origem do voo:")
				leia(origem[j])
					
				escreva("Digite o destino do voo:")
				leia(destino[j])
				
				se(origem[j] == origemDestino e destino[j] == destinoOrigem){
					j--
				}
				
				escreva("Voo número ", numVoo[j])

				se(lugares[j] > 0){
					escreva("\nReserva concluída")
					lugares[j] = lugares[j] - 1
					escreva("\nNúmero de lugares disponíveis:",lugares[j])
					confVoo[j] = verdadeiro
				}	
				senao{
					escreva("\nVoo lotado")						
				}
				
				ut.aguarde(2500)
				limpa()
				origemDestino = origem[j]
				destinoOrigem = destino[j] 	
				j++
				cadastro++			
				pare	
			caso 3:
				fechar = falso					
			}	
		}
		enquanto(fechar)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3704; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {j, 6, 16, 1}-{lugares, 8, 9, 7}-{destino, 9, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */