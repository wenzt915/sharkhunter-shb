package net.pms.dlna;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import net.pms.dlna.virtual.VirtualFolder;

public class FolderLimit extends VirtualFolder {
	private static final Logger logger = LoggerFactory.getLogger(FolderLimit.class);
	private DLNAResource start;
	
	public FolderLimit() {
		super("Folder Limit",null);
		start=null;
	}
	
	private boolean inMe(DLNAResource res) {
		while(res!=null) {
			if(res instanceof FolderLimit) 
				return true;
			if(res instanceof RootFolder)
				break;
			res=res.getParent();
		}
		return false;
	}
	
	public void setStart(DLNAResource res) {
		if(inMe(res))
			return;
		if(res.getParent()==null)
			start=res;
		else
			start=res.getParent();
	}
	
	public void discoverChildren() {
		if(start!=null)
			addChild(start);
	}
	
	public void resolve() {
		this.discovered=false;
		this.childrenNumber=0;
		this.children.clear();
	}
}
