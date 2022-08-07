ENTITY Decodificador IS
    PORT (
        messageBus : IN STD_LOGIC_VECTOR(0 TO 12);
        decodedMessage : OUT STD_LOGIC_VECTOR(0 TO 7)
    );
END Decodificador;

ARCHITECTURE arch OF Decodificador IS
BEGIN
    decodedMessage(0) <= messageBus(0) XOR messageBus(5);
    decodedMessage(1) <= messageBus(1) OR messageBus(6);
    decodedMessage(2) <= messageBus(2) XOR messageBus(7);
    decodedMessage(3) <= messageBus(3) AND messageBus(8);
    decodedMessage(4) <= messageBus(4) XOR messageBus(9);

    decodedMessage(5) <= messageBus(0) XOR messageBus(9) XOR (messageBus(4) XOR messageBus(9));
    decodedMessage(6) <= messageBus(1) AND messageBus(9) XOR (messageBus(3) AND messageBus(8));
    decodedMessage(7) <= messageBus(2) XOR messageBus(9) XOR (messageBus(2) XOR messageBus(7));
END ARCHITECTURE; -- arch