var input = argument0;

switch (input) {
	case "hello":
		var r = irandom(3);
		switch (r) {
			case 0:
				return "Hello, captain."
				break;
			case 1:
				return "How is everything, captain?"
				break;
			case 2:
				return "Yes?"
				break;
			case 3:
				return "Hello there."
				break;
			default:
				return "Hello, captain."
				break;
		}
		break;
	default:
		return "invalid case";
		break;
}