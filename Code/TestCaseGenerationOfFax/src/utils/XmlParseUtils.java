package utils;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

// This class provides some fundamental functions to parse a xml file
public class XmlParseUtils {
	public static Document getDocument(String xml_file) {
		SAXReader reader = new SAXReader();  
        Document doc = null;
		try {
	        InputStream in = new FileInputStream(xml_file); 
			doc = reader.read(in);
			in.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return doc;
	}
	
	public static Element getRootElem(Document doc) {
		return doc.getRootElement();
	}
	
	public static List<Attribute> getAttributes(Element e) {
		return e.attributes();
	}
	
	public static List<Element> getChildElems(Element e) {
		return e.elements();
	}
	
	public static String getAttributeByName(Element e, String name) {
		return e.attributeValue(name);
	}
}
