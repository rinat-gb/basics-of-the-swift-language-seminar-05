// 1. В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца,
// удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер
// картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы
// класть и пиццу, и картошку фри.

// создаём протокол для различных блюд (меню)
protocol MenuProtocol {}

// подписываем пиццу на этот протокол
struct Pizza: MenuProtocol {
    enum PizzaKind: String {
        case Pepperoni = "Пепперони"
        case ChetyreSyra = "4 сыра"
        case Barbeku = "Барбекю"
        case Diablo = "Дьябло"

        func getPizzaName() -> String { rawValue }
    }

    enum Additions: String {
        case Tomatoes = "помидоры"
        case Sausage = "колбаса"
        case Pepper = "перец"
        case Cheese = "сыр"

        func getAdditionName() -> String { rawValue }
    }

    mutating func addAddition(addition: Additions) {
        additions.append(addition)
    }

    var pizzaKind: PizzaKind
    var additions: [Additions] = []
    var isTestoTonkoe: Bool
}

// создаём структуру для картошки фри и подписываем её на протокол меню
struct Potato: MenuProtocol {
    var cost: Double[get]
    var size: Int[get]
}

class Pizzeria {
    // удаляем переменную для хранения пицц из прошлого семинара
    // private var pizzas: [Pizza]

    // и вводим вместо этой переменной список возможных блюд (меню)
    private var menu: [MenuProtocol]

    init(menu: [MenuProtocol]) {
        self.menu = menu
    }

    public var description: String {
        var res = "Список всех блюд в пиццерии:"

        for (num, item) in menu.enumerated() {
            // res += "\n" + String(num + 1) + ". " + pizza.pizzaKind.getPizzaName()

            // if pizza.isTestoTonkoe {
            //     res += ", тонкое тесто"
            // } else {
            //     res += ", толстое тесто"
            // }

            // if pizza.additions.isEmpty {
            //     res += ", стандартная"
            // } else {
            //     res += ", с дополнениями:"

            //     for addition in pizza.additions {
            //         res += "\n\t" + addition.getAdditionName()
            //     }
            // }
        }
        return res
    }

    // 2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню
    //
    // удаляем функцию из прошлого семинара
    // func addPizza(pizza: Pizza) {
    //    pizzas.append(pizza)
    // }

    // и добавляем функцию для добавления позиции в меню
    func addItem(item: MenuProtocol) {
        menu.append(item)
    }
}

// 3. Создайте протокол, в котором будут содержаться функции открытия и закрытия

// 4. Написать расширение для класса пиццерии, в  котором будет реализован протокол из пункта 3

// 5. Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна
// работать и с Int, и с Double.Функция должна возвращать результат вычитания Numeric

print("\nДомашнее задание по пятому семинару по языку Swift\n")
