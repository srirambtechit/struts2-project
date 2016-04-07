package com.kogent;
import java.util.Map;
import org.apache.struts2.util.StrutsTypeConverter;
import com.opensymphony.xwork2.util.TypeConversionException;


public class SquareTypeConverter extends StrutsTypeConverter {
public Object convertFromString(Map context, String[] values, Class toClass) 
{	
		String userString = values[0];
		Square newSquare = parseSquare ( userString );
		return newSquare;
	}
	
	public String convertToString(Map context, Object o) {
		
		Square square = (Square) o;
		String userString = "S:e" + square.getEdge(); 
		
		return userString;
	}
	
private Square parseSquare( String userString ) throws TypeConversionException 
{
	Square square = null;
	
	int edgeIndex = userString.indexOf('e') + 1;
	System.out.println("userString = " + userString);		
	
	if (!userString.startsWith( "S:e")  )
		throw new TypeConversionException ( "Invalid Syntax");
	
	int edge;
	try {
	edge = Integer.parseInt( userString.substring( edgeIndex ) );
	}catch ( NumberFormatException e ) {
	throw new TypeConversionException ( "Invalid Integer Value for Edge"); }
		
				
		square = new Square();
		square.setEdge( edge );
 		
		return square;
	}

}
