contract;

enum OptionEnum {
    a: Option<u8>,
    b: Option<u16>,
}

struct OptionStruct {
    one: OptionEnum,
    two: Option<u32>,
}

pub enum FoodType {
    Tomatoes: (),
}

pub struct Food {
    pub name: FoodType,
    pub time_planted: Option<u64>,
}

impl Food {
    pub fn new(name: FoodType, time_planted: Option<u64>) -> Self {
        Self {
            name,
            time_planted,
        }
    }
}

pub struct GardenVector {
    pub inner: [Option<Food>; 10],
}

impl GardenVector {
    pub fn new() -> Self {
        let initial_val: Option<Food> = None;
        Self {
            inner: [initial_val; 10],
        }
    }
}

enum DeepEnum {
    a: (bool, [Option<u8>; 3]),
}

struct DeepStruct {
    DeepEnum: DeepEnum,
}

abi OptionContract {
    fn echo_option(arg: Option<u8>) -> Option<u8>;
    fn echo_struct_enum_option(arg: OptionStruct) -> OptionStruct;
    fn echo_vec_option(arg: Vec<Option<u32>>) -> Vec<Option<u32>>;
    fn echo_tuple_option(arg: (Option<u8>, Option<u16>)) -> (Option<u8>, Option<u16>);
    fn echo_enum_option(arg: OptionEnum) -> OptionEnum;
    fn echo_array_option(arg: [Option<u16>; 3]) -> [Option<u16>; 3];
    fn print_enum_option_array() -> GardenVector;
    fn echo_deeply_nested_option(arg: DeepStruct) -> DeepStruct;
}

impl OptionContract for Contract {
    fn echo_option(arg: Option<u8>) -> Option<u8> {
        arg
    }

    fn echo_struct_enum_option(arg: OptionStruct) -> OptionStruct {
        arg
    }

    fn echo_vec_option(arg: Vec<Option<u32>>) -> Vec<Option<u32>> {
        arg
    }

    fn echo_tuple_option(arg: (Option<u8>, Option<u16>)) -> (Option<u8>, Option<u16>) {
        arg
    }

    fn echo_enum_option(arg: OptionEnum) -> OptionEnum {
        arg
    }

    fn echo_array_option(arg: [Option<u16>; 3]) -> [Option<u16>; 3] {
        arg
    }

    fn print_enum_option_array() -> GardenVector {
        GardenVector::new()
    }

    fn echo_deeply_nested_option(arg: DeepStruct) -> DeepStruct {
        arg
    }
}
