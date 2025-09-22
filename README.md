# lab1

* [`src/FirstAlgo`](https://github.com/naku0/fp-lab1/blob/main/src/FirstAlgo.hs) -- модуль с 1 задачей из [ProjectEuler](https://projecteuler.net/problem=1)
* [`src/SecondAlgo`](https://github.com/naku0/fp-lab1/blob/main/src/SecondAlgo.hs) -- модуль с 30 задачей из [ProjectEuler](https://projecteuler.net/problem=30)

## Разберем подробнее задание:

1. Монолитные реализации с использованием:
    * хвостовой рекурсии;
    * рекурсии (вариант с хвостовой рекурсией не является примером рекурсии);

    Это выполняют такие функции как `recursionActivator` и `tailRecursioninator` из `src/FirstAlgo`; `recursion` и `linearRecursion` из `src/SecondAlgo`

2. Модульной реализации, где явно разделена генерация последовательности, фильтрация и свёртка (должны использоваться функции reduce/fold, filter и аналогичные);

    Это выполняют такие функции как: `filterLitterRikiTikiGitter` и `folding`

3. Генерация последовательности при помощи отображения (map);

    Это выполняют такие функции как: `mapiCapiFunction` и `mapop`

4. Работа со спец. синтаксисом для циклов (где применимо);

    В хаскелле нет особого синтаксиса для циклов

5. Работа с бесконечными списками для языков, поддерживающих ленивые коллекции или итераторы как часть языка (к примеру Haskell, Clojure);

    Это выполняют такие функции как: `listComprehenter` и `listiik`

6. Реализация на любом удобном для вас традиционном языке программирования для сравнения.

    Реализация представлена на внутреннем языке приложения 1С:Предприятие, в [https://github.com/naku0/fp-lab1/blob/main/1%D1%81/lolki.bsl] функциях `Задача1` и `Задача30` соответственно
