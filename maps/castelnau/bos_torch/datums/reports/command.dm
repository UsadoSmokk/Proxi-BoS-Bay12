/datum/computer_file/report/recipient/command/generate_fields()
	..()
	set_access(access_heads)

/datum/computer_file/report/recipient/command/report
	form_name = "REP-LSS"
	title = "Общая форма отчёта"
	logo = "\[sovlogo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/command/request/generate_fields()
	..()
	add_field(/datum/report_field/text_label/instruction, "Этот факс был отправлен командованием ЛРК Антарес")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/people/from_manifest, "Полное имя, звание и должность", required = 1)
	add_field(/datum/report_field/simple_text, "Приоритетность", required = 1)
	add_field(/datum/report_field/simple_text, "Тема", required = 1)
	add_field(/datum/report_field/pencode_text, "Сообщение", required = 1)
	add_field(/datum/report_field/signature, "Подпись", required = 1)
	set_access(list(list(access_qm, access_senadv, access_cent_creed, access_representative)), list(list(access_qm, access_senadv, access_cent_creed, access_representative)), override = 0)


/datum/computer_file/report/recipient/command/request_command
	form_name = "REQ-LSS"
	title = "Запрос к Командованию"
	logo = "\[sovlogo\]"
	available_on_ntnet = TRUE

/datum/computer_file/report/recipient/command/request_command/generate_fields()
	..()
	add_field(/datum/report_field/number, "Номер запроса ")
	add_field(/datum/report_field/people/from_manifest, "Полное имя, звание и должность запросившего", required = 1)
	add_field(/datum/report_field/pencode_text, "Содержание запроса", required = 1)
	add_field(/datum/report_field/pencode_text, "Причина запроса", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/text_label/instruction, "Документ является недействительным в случае отсутствия подписи или печати.")
	add_field(/datum/report_field/signature, "Подпись", required = 1)
	set_access(list(list(access_qm, access_senadv, access_cent_creed, access_representative)), list(list(access_qm, access_senadv, access_cent_creed, access_representative)), override = 0)


/datum/computer_file/report/recipient/command/decree
	form_name = "DEC-NTF"
	title = "Указ Командования"
	logo = "\[sovlogo\]"
	available_on_ntnet = TRUE

/datum/computer_file/report/recipient/command/decree/generate_fields()
	..()
	add_field(/datum/report_field/number, "Номер указа")
	add_field(/datum/report_field/people/from_manifest, "Полное имя, звание и должность распорядителя", required = 1)
	add_field(/datum/report_field/pencode_text, "Содержание распоряжения", required = 1)
	add_field(/datum/report_field/pencode_text, "Причина распоряжения", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/text_label/instruction, "Документ является недействительным в случае отсутствия подписи или печати.")
	add_field(/datum/report_field/signature, "Подпись", required = 1)

/datum/computer_file/report/recipient/command/crew_transfer
	form_name = "CTA-LSS-01"
	title = "Смена занимаемой должности"
	logo = "\[sovlogo\]"
	available_on_ntnet = TRUE

/datum/computer_file/report/recipient/command/crew_transfer/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/text_label/header, "ЛРК \"Антарес\" - Офис Первого офицера")
	add_field(/datum/report_field/people/from_manifest, "Полное имя и звание Исполнителя(Первый/Командующий офицер)", required = 1)
	add_field(/datum/report_field/people/from_manifest, "Полное имя и звание Заявителя", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/simple_text, "Текущая должность", required = 1)
	add_field(/datum/report_field/simple_text, "Запрашиваемая должность", required = 1)
	add_field(/datum/report_field/pencode_text, "Причина перевода", required = 1)
	add_field(/datum/report_field/text_label/instruction, "Документ является недействительным в случае отсутствия подписи или печати.")
	add_field(/datum/report_field/signature, "Подпись Заявителя", required = 1)
	xo_fields += add_field(/datum/report_field/signature, "Подпись Исполнителя(Первый/Командующий офицер)")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Одобрено")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/command/access_modification
	form_name = "AMA-LSS-02"
	title = "Получение расширенного доступа"
	logo = "\[sovlogo\]"
	available_on_ntnet = TRUE

/datum/computer_file/report/recipient/command/access_modification/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/text_label/header, "ЛРК \"Антарес\" - Офис Первого офицера")
	add_field(/datum/report_field/people/from_manifest, "Полное имя и звание Исполнителя(Первый/Командующий офицер)", required = 1)
	add_field(/datum/report_field/people/from_manifest, "Полное имя и звание Заявителя", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/simple_text, "Текущая должность", required = 1)
	add_field(/datum/report_field/simple_text, "Запрашиваемый доступ", required = 1)
	add_field(/datum/report_field/pencode_text, "Причина расширения доступа", required = 1)
	add_field(/datum/report_field/simple_text, "Срок расширения доступа")
	add_field(/datum/report_field/text_label/instruction, "Документ является недействительным в случае отсутствия подписи или печати.")
	add_field(/datum/report_field/signature, "Подпись Заявителя", required = 1)
	xo_fields += add_field(/datum/report_field/signature, "Подпись Исполнителя(Первый/Командующий офицер)")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Одобрено")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/command/borging
	form_name = "CC-LSS-09"
	title = "Контракт на добровольную Кибернетизацию"
	logo = "\[sovlogo\]"
	available_on_ntnet = TRUE

/datum/computer_file/report/recipient/command/borging/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/text_label/header, "ЛРК \"Антарес\" - Офис Первого офицера")
	add_field(/datum/report_field/people/from_manifest, "Полное имя и звание Исполнителя(Первый/Командующий офицер)")
	add_field(/datum/report_field/people/from_manifest, "Полное имя и звание Заявителя", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/text_label/instruction, "Я, нижеподписавшийся, настоящим соглашаюсь добровольно пройти прижизненную лоботомию с намерением киборгизации \
	или ассимиляции с ИИ, и я осознаю все последствия такого акта. Я также понимаю, что эта операция может быть необратимой, и что мой трудовой договор будет расторгнут.")
	add_field(/datum/report_field/signature, "Подпись Заявителя")
	xo_fields += add_field(/datum/report_field/signature, "Подпись Исполнителя(Первый/Командующий офицер)")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Одобрено")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)
