# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username: 'admin', email: 'admin@example.com', password: 'password', password_confirmation: 'password', admin: true) if Rails.env.development?
Seed.create title: 'Абрикос маньчжурский', latin_title: 'Armeniaca mandshurica', usda: '3'
Seed.create title: 'Акантопанакс сидячецветковый', latin_title: 'Eleutherococcus sessiliflorus', usda: '4'
Seed.create title: 'Актинидия Аргутта', latin_title: 'Actinidia arguta', usda: '4'
Seed.create title: 'Барбарис амурский', latin_title: 'Berberis amurensis', usda: '3'
Seed.create title: 'Бархат амурский', latin_title: 'Phellodendron amurense', usda: '3'
Seed.create title: 'Берёза чёрная (даурская)', latin_title: 'Betula davurica', usda: '3'
Seed.create title: 'Боярышник Арнольда', latin_title: 'Crataegus arnoldiana', usda: '4'
Seed.create title: 'Боярышник кроваво-красный ', latin_title: 'Crataegus sanguinea', usda: '3'
Seed.create title: 'Боярышник крупноколючковый', latin_title: 'Crataegus macracantha', usda: '3'
Seed.create title: 'Боярышник перистонадрезаный', latin_title: 'Crataegus pinnatifida', usda: '3'
Seed.create title: 'Виноград амурский', latin_title: 'Vitis amurensis', usda: '3'
Seed.create title: 'Виноград девичий пятилисточковый', latin_title: 'Parthenocissus quinquefolia', usda: '3'
Seed.create title: 'Груша уссурийская', latin_title: 'Pyrus ussuriensis', usda: '3'
Seed.create title: 'Дуб монгольский', latin_title: 'Quercus mongolica', usda: '3'
Seed.create title: 'Дуб черешчатый', latin_title: 'Quercus robur', usda: '3'
Seed.create title: 'Калина Саржента', latin_title: 'Viburnum sargentii', usda: '3'
Seed.create title: 'Катальпа яйцевидная', latin_title: 'Catalpa ovata', usda: '4'
Seed.create title: 'Кедр корейский', latin_title: 'Pinus koraiensis', usda: '3'
Seed.create title: 'Кедр сибирский', latin_title: 'Pinus sibirica', usda: '3'
Seed.create title: 'Кизильник блестящий', latin_title: 'Cotoneaster lucidus', usda: '3'
Seed.create title: 'Клён Гинала (приречный)', latin_title: 'Acer ginnala', usda: '2'
Seed.create title: 'Клён зеленокорый', latin_title: 'Acer tegmentosum', usda: '3'
Seed.create title: 'Клён ложнозибольдов', latin_title: 'Acer sieboldianum', usda: '4'
Seed.create title: 'Клён маньчжурский', latin_title: 'Acer mandshuricum', usda: '3'
Seed.create title: 'Клён мелколистный', latin_title: 'Acer mono', usda: '3'
Seed.create title: 'Клён остролистный', latin_title: 'Acer platanoides', usda: '3'
Seed.create title: 'Лимонник китайский', latin_title: 'Schisandra chinensis', usda: '4'
Seed.create title: 'Липа сердцевидная', latin_title: 'Tilia cordata', usda: '3'
Seed.create title: 'Магнолия Зибольда', latin_title: 'Magnolia sieboldii', usda: '3'
Seed.create title: 'Магнолия Кобус', latin_title: 'Magnolia Kobus', usda: '3'
Seed.create title: 'Магнолия Обратнояицевидная', latin_title: 'Magnolia obovata', usda: '4'
Seed.create title: 'Орех маньчжурский', latin_title: 'Juglans mandshurica', usda: '3'
Seed.create title: 'Рододендрон клейкий', latin_title: 'Rhododendron viscosum', usda: '3'
Seed.create title: 'Рододендрон Шлипенбаха', latin_title: 'Rhododendron schlippenbachii', usda: '4'
Seed.create title: 'Черемуха Виргинская', latin_title: 'Padus virginiana', usda: '3'
Seed.create title: 'Черемуха Маака', latin_title: 'Padus maackii', usda: '3'
Seed.create title: 'Шиповник морщинистый', latin_title: 'Rosa rugosa', usda: '3'
Seed.create title: 'Элеутерококк колючий', latin_title: 'Eleutherococcus senticosus', usda: '4'
Seed.create title: 'Яблоня ягодная', latin_title: 'Malus baccata', usda: '3'
Seed.create title: 'Кедровый стланник', latin_title: 'Pinus pumila', usda: '2'

Price.create seed_id: '1', amount: '10', unit: 'шт.', price: '100'
Price.create seed_id: '2', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '3', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '4', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '5', amount: '50', unit: 'ягод', price: '100'
Price.create seed_id: '6', amount: '1', unit: 'щепотка', price: '100'
Price.create seed_id: '7', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '8', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '9', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '10', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '11', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '12', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '13', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '14', amount: '10', unit: 'шт.', price: '100'
Price.create seed_id: '15', amount: '10', unit: 'шт.', price: '100'
Price.create seed_id: '16', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '17', amount: '2', unit: 'стручка', price: '100'
Price.create seed_id: '18', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '19', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '19', amount: '300', unit: 'шт.', price: '300'
Price.create seed_id: '19', amount: '1000', unit: 'шт.', price: '600'
Price.create seed_id: '20', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '21', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '22', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '23', amount: '20', unit: 'шт.', price: '100'
Price.create seed_id: '24', amount: '20', unit: 'шт.', price: '100'
Price.create seed_id: '25', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '26', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '27', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '28', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '29', amount: '30', unit: 'шт.', price: '100'
Price.create seed_id: '30', amount: '20', unit: 'шт.', price: '100'
Price.create seed_id: '31', amount: '10', unit: 'шт.', price: '100'
Price.create seed_id: '32', amount: '10', unit: 'шт.', price: '100'
Price.create seed_id: '33', amount: '1', unit: 'щепотка', price: '100'
Price.create seed_id: '34', amount: '1', unit: 'щепотка', price: '100'
Price.create seed_id: '35', amount: '20', unit: 'шт.', price: '100'
Price.create seed_id: '36', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '37', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '38', amount: '20', unit: 'шт.', price: '100'
Price.create seed_id: '39', amount: '50', unit: 'шт.', price: '100'
Price.create seed_id: '40', amount: '300', unit: 'шт.', price: '300'
Price.create seed_id: '40', amount: '1000', unit: 'шт.', price: '600'

Region.create title: 'Республика Адыгея'
Region.create title: 'Республика Башкортостан'
Region.create title: 'Республика Бурятия'
Region.create title: 'Республика Алтай'
Region.create title: 'Республика Дагестан'
Region.create title: 'Республика Ингушетия'
Region.create title: 'Кабардино-Балкарская Республика'
Region.create title: 'Республика Калмыкия'
Region.create title: 'Карачаево-Черкесская Республика'
Region.create title: 'Республика Карелия'
Region.create title: 'Республика Коми'
Region.create title: 'Республика Марий Эл'
Region.create title: 'Республика Мордовия'
Region.create title: 'Республика Саха'
Region.create title: 'Республика Северная Осетия'
Region.create title: 'Республика Татарстан'
Region.create title: 'Республика Тыва'
Region.create title: 'Удмуртская Республика'
Region.create title: 'Республика Хакасия'
Region.create title: 'Чеченская Республика'
Region.create title: 'Чувашская Республика'
Region.create title: 'Алтайский край'
Region.create title: 'Краснодарский край'
Region.create title: 'Красноярский край'
Region.create title: 'Приморский край'
Region.create title: 'Ставропольский край'
Region.create title: 'Хабаровский край'
Region.create title: 'Амурская область'
Region.create title: 'Архангельская область'
Region.create title: 'Астраханская область'
Region.create title: 'Белгородская область'
Region.create title: 'Брянская область'
Region.create title: 'Владимирская область'
Region.create title: 'Волгоградская область'
Region.create title: 'Вологодская область'
Region.create title: 'Воронежская область'
Region.create title: 'Ивановская область'
Region.create title: 'Иркутская область'
Region.create title: 'Калининградская область'
Region.create title: 'Калужская область'
Region.create title: 'Камчатский край'
Region.create title: 'Кемеровская область'
Region.create title: 'Кировская область'
Region.create title: 'Костромская область'
Region.create title: 'Курганская область'
Region.create title: 'Курская область'
Region.create title: 'Ленинградская область'
Region.create title: 'Липецкая область'
Region.create title: 'Магаданская область'
Region.create title: 'Московская область'
Region.create title: 'Мурманская область'
Region.create title: 'Нижегородская область'
Region.create title: 'Новгородская область'
Region.create title: 'Новосибирская область'
Region.create title: 'Омская область'
Region.create title: 'Оренбургская область'
Region.create title: 'Орловская область'
Region.create title: 'Пензенская область'
Region.create title: 'Пермский край'
Region.create title: 'Псковская область'
Region.create title: 'Ростовская область'
Region.create title: 'Рязанская область'
Region.create title: 'Самарская область'
Region.create title: 'Саратовская область'
Region.create title: 'Сахалинская область'
Region.create title: 'Свердловская область'
Region.create title: 'Смоленская область'
Region.create title: 'Тамбовская область'
Region.create title: 'Тверская область'
Region.create title: 'Томская область'
Region.create title: 'Тульская область'
Region.create title: 'Тюменская область'
Region.create title: 'Ульяновская область'
Region.create title: 'Челябинская область'
Region.create title: 'Забайкальский край'
Region.create title: 'Ярославская область'
Region.create title: 'г. Москва'
Region.create title: 'Санкт-Петербург'
Region.create title: 'Еврейская автономная область'
Region.create title: 'Ненецкий автономный округ'
Region.create title: 'Ханты-Мансийский автономный округ'
Region.create title: 'Чукотский автономный округ'
Region.create title: 'Ямало-Ненецкий автономный округ'
Region.create title: 'Республика Крым'
Region.create title: 'Севастополь'