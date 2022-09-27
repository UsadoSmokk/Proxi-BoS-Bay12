// Окей я вас всех не навижу. Это не Хаб, это просто торч. Идите нахуй. Спасибо. ~Laxesh
// Ну кто блять создает пустой огрызок карты на проде, чтобы тесты ругались что он не включен в тесты?!
#if !defined(using_map_DATUM)
	#include "../torch/torch.dm"
#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Hub
#endif
