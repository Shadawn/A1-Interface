﻿Функция ДобавитьМеханизмы(СписокМеханизмов) Экспорт
	А1Э_Механизмы.Добавить(СписокМеханизмов, "А1Интерфейс_РабочийСтол");
	А1Э_Механизмы.Добавить(СписокМеханизмов, "А1Интерфейс_ПанельОтчетов");
	А1Э_Механизмы.Добавить(СписокМеханизмов, "А1Интерфейс_Настройки");
КонецФункции

Функция ДобавитьОбъекты(СписокОбъектов) Экспорт
	А1Э_Механизмы.Подключить(СписокОбъектов, "ОбщаяФорма.А1Интерфейс_РабочийСтол", "А1Интерфейс_РабочийСтол");
	А1Э_Механизмы.Подключить(СписокОбъектов, "ОбщаяФорма.А1Интерфейс_ПанельОтчетов", "А1Интерфейс_ПанельОтчетов");
	А1Э_Механизмы.Подключить(СписокОбъектов, "ОбщаяФорма.А1Интерфейс_Настройки", "А1Интерфейс_Настройки");
КонецФункции
