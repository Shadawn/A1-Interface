﻿Функция НастройкиМеханизма() Экспорт
	Настройки = А1Э_Механизмы.НовыйНастройкиМеханизма();
	
	Настройки.Обработчики.Вставить("ФормаПриСозданииОбъектов", Истина);
	Настройки.Обработчики.Вставить("ФормаПриСозданииНаСервере", Истина);
	
	Настройки.ПорядокВыполнения = -1000000000;
	
	Возврат Настройки;
КонецФункции

Функция ФормаПриСозданииОбъектов(Форма, Отказ, МассивОписаний) Экспорт 
	А1Э_Механизмы.ВыполнитьМеханизмыОбработчика("А1Интерфейс_ПанельОтчетов__ПриСозданииОбъектов", Форма, Отказ, МассивОписаний);
КонецФункции

Функция ФормаПриСозданииНаСервере(Форма, Отказ, СтандартнаяОбработка) Экспорт 
	А1Э_Механизмы.ВыполнитьМеханизмыОбработчика("А1Интерфейс_ПанельОтчетов__ПриСозданииНаСервере", Форма, Отказ, СтандартнаяОбработка);
КонецФункции

#Область Компоненты
#Если НЕ Клиент Тогда
	
	Функция ДобавитьОписаниеКнопкиОтчета(МассивОписаний, ИмяОтчета, РодительЭлемента = Неопределено, ПередЭлементом = Неопределено, Параметры = Неопределено) Экспорт
		ОбъектМетаданных = А1Э_Метаданные.ОбъектМетаданных(ИмяОтчета);
		Если НЕ А1Э_Доступы.ЕстьПраво("Просмотр", ОбъектМетаданных) Тогда Возврат Неопределено; КонецЕсли;
		Если НЕ А1Э_Общее.Свойство(Параметры, "Заголовок") Тогда
			Заголовок = ОбъектМетаданных.Синоним;
		Иначе
			Заголовок = Параметры.Заголовок;
		КонецЕсли;
		РабочиеПараметры = А1Э_Структуры.СкопироватьВШаблонСЗаменой(Параметры,
		"Ширина", 30,
		);
		А1Э_Формы.ДобавитьОписаниеКомандыИКнопки2(МассивОписаний, СтрЗаменить(ИмяОтчета, ".", "___"), ИмяМодуля() + ".ОткрытьОтчет", Заголовок, РодительЭлемента, ПередЭлементом, РабочиеПараметры);

	КонецФункции
	
#КонецЕсли
#Если Клиент Тогда
	
	Функция ОткрытьОтчет(Форма, Команда) Экспорт
		ИмяОтчета = СтрЗаменить(Команда.Имя, "___", ".");
		ОткрытьФорму(ИмяОтчета + ".ФормаОбъекта");
	КонецФункции
	
#КонецЕсли
 

#КонецОбласти 

Функция ИмяМодуля() Экспорт
	Возврат "А1Интерфейс_ПанельОтчетов"; 	
КонецФункции 