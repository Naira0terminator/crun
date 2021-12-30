module src.token;

import std.conv     : to;
import std.format   : format;

export class Token
{
public:

    this(Type type, string lexeme, int line)
    {
        this.type   = type;
        this.lexeme = lexeme;
        this.line   = line;
    }

    enum Type 
    {
        CMD,
        COLON,
        EOF,
    }

    override string toString() const 
    {
        return format("Type(%s) Lexeme(%s) line(%d)", 
        to!string(type), 
        lexeme, 
        line);
    }

    Type type;
    string lexeme;
    int line;
}