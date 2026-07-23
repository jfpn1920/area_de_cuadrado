Algoritmo area_de_cuadrado
	Definir opcion, totalCuadrados Como Entero
	Definir i, idBuscar Como Entero
	Definir encontrado Como Logico
	Definir lado, area, perimetro Como Real
	Definir sumaAreas, sumaLados, sumaPerimetros Como Real
	Definir promedioAreas, promedioLados, promedioPerimetros Como Real
	Definir mayorArea, menorArea Como Real
	Definir mayorLado, menorLado Como Real
	Definir mayorPerimetro, menorPerimetro Como Real
	Dimension id[100]
	Dimension descripcion[100]
	Dimension lado[100]
	Dimension area[100]
	Dimension perimetro[100]
	Dimension estado[100]
	totalCuadrados <- 0
	//----------------------------------//
	//--|menu_principal_area_cuadrado|--//
	//----------------------------------//
	Repetir
		Escribir "menu principal area de cuadrado"
		Escribir "1) registrar cuadrado"
		Escribir "2) editar cuadrado"
		Escribir "3) eliminar cuadrado"
		Escribir "4) buscar cuadrado"
		Escribir "5) listar cuadrados"
		Escribir "6) ver detalles del cuadrado"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//------------------------//
			//--|registrar_cuadrado|--//
			//------------------------//
			1:
				Si totalCuadrados < 100 Entonces
					totalCuadrados <- totalCuadrados + 1
					id[totalCuadrados] <- totalCuadrados
					Escribir "ingrese una descripcion:"
					Leer descripcion[totalCuadrados]
					Escribir "ingrese el lado:"
					Leer lado[totalCuadrados]
					area[totalCuadrados] <- lado[totalCuadrados] * lado[totalCuadrados]
					perimetro[totalCuadrados] <- lado[totalCuadrados] * 4
					estado[totalCuadrados] <- "calculado"
					Escribir "cuadrado registrado correctamente."
				SiNo
					Escribir "no hay espacio para registrar mas cuadrados."
				FinSi
			//---------------------//
			//--|editar_cuadrado|--//
			//---------------------//
			2:
				Escribir "editar cuadrado"
				Si totalCuadrados = 0 Entonces
					Escribir "no hay cuadrados registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalCuadrados Hacer
						Escribir id[i], " | ", descripcion[i], " | ", lado[i], " | ", area[i], " | ", perimetro[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del cuadrado:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCuadrados Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva descripcion:"
							Leer descripcion[i]
							Escribir "ingrese el nuevo lado:"
							Leer lado[i]
							area[i] <- lado[i] * lado[i]
							perimetro[i] <- lado[i] * 4
							estado[i] <- "calculado"
							Escribir "cuadrado editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un cuadrado con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|eliminar_cuadrado|--//
			//-----------------------//
			3:
				Escribir "eliminar cuadrado"
				Si totalCuadrados = 0 Entonces
					Escribir "no hay cuadrados registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalCuadrados Hacer
						Escribir id[i], " | ", descripcion[i], " | ", lado[i], " | ", area[i], " | ", perimetro[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del cuadrado:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCuadrados Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalCuadrados Entonces
								Para j <- i Hasta totalCuadrados - 1 Hacer
									id[j] <- id[j+1]
									descripcion[j] <- descripcion[j+1]
									lado[j] <- lado[j+1]
									area[j] <- area[j+1]
									perimetro[j] <- perimetro[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalCuadrados <- totalCuadrados - 1
							Escribir "cuadrado eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un cuadrado con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|buscar_cuadrado|--//
			//---------------------//
			4:
				Escribir "buscar cuadrado"
				Si totalCuadrados = 0 Entonces
					Escribir "no hay cuadrados registrados."
				SiNo
					Escribir "ingrese el id del cuadrado:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCuadrados Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", descripcion[i], " | ", lado[i], " | ", area[i], " | ", perimetro[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un cuadrado con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|listar_cuadrados|--//
			//----------------------//
			5:
				Escribir "listar cuadrados"
				Si totalCuadrados = 0 Entonces
					Escribir "no hay cuadrados registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalCuadrados Hacer
						Escribir id[i], " | ", descripcion[i], " | ", lado[i], " | ", area[i], " | ", perimetro[i], " | ", estado[i]
					FinPara
				FinSi
			//-------------------------------//
			//--|ver_detalles_del_cuadrado|--//
			//-------------------------------//
			6:
				Escribir "ver detalles del cuadrado"
				Si totalCuadrados = 0 Entonces
					Escribir "no hay cuadrados registrados."
				SiNo
					Escribir "ingrese el id del cuadrado:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCuadrados Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del cuadrado"
							Escribir "id: ", id[i]
							Escribir "descripcion: ", descripcion[i]
							Escribir "lado: ", lado[i]
							Escribir "area: ", area[i]
							Escribir "perimetro: ", perimetro[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un cuadrado con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalCuadrados = 0 Entonces
					Escribir "no hay cuadrados registrados."
				SiNo
					sumaAreas <- 0
					sumaLados <- 0
					sumaPerimetros <- 0
					mayorArea <- area[1]
					menorArea <- area[1]
					mayorLado <- lado[1]
					menorLado <- lado[1]
					mayorPerimetro <- perimetro[1]
					menorPerimetro <- perimetro[1]
					Para i <- 1 Hasta totalCuadrados Hacer
						sumaAreas <- sumaAreas + area[i]
						sumaLados <- sumaLados + lado[i]
						sumaPerimetros <- sumaPerimetros + perimetro[i]
						Si area[i] > mayorArea Entonces
							mayorArea <- area[i]
						FinSi
						Si area[i] < menorArea Entonces
							menorArea <- area[i]
						FinSi
						Si lado[i] > mayorLado Entonces
							mayorLado <- lado[i]
						FinSi
						Si lado[i] < menorLado Entonces
							menorLado <- lado[i]
						FinSi
						Si perimetro[i] > mayorPerimetro Entonces
							mayorPerimetro <- perimetro[i]
						FinSi
						Si perimetro[i] < menorPerimetro Entonces
							menorPerimetro <- perimetro[i]
						FinSi
					FinPara
					promedioAreas <- sumaAreas / totalCuadrados
					promedioLados <- sumaLados / totalCuadrados
					Escribir "estadistica general"
					Escribir "total de cuadrados: ", totalCuadrados
					Escribir "suma de areas: ", sumaAreas
					Escribir "promedio de areas: ", promedioAreas
					Escribir "area mayor: ", mayorArea
					Escribir "area menor: ", menorArea
					Escribir "suma de lados: ", sumaLados
					Escribir "promedio de lados: ", promedioLados
					Escribir "lado mayor: ", mayorLado
					Escribir "lado menor: ", menorLado
					Escribir "suma de perimetros: ", sumaPerimetros
					Escribir "perimetro mayor: ", mayorPerimetro
					Escribir "perimetro menor: ", menorPerimetro
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar area de cuadrado."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo