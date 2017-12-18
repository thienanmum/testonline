package edu.mum.exception;

public class ImageNotSaveException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4335525189191891257L;
	
	
	private Long employeeId;
	private String message = "Image cannot be saved for this ID ";
	
 	public ImageNotSaveException() {}
	
	public ImageNotSaveException(Long employeeId, String message) {
		this.employeeId = employeeId;

		if (message != null) this.message = message;
		
	}
	
	public String getFullMessage() {
		return (message + employeeId);
	}
	
	public Long getEployeeId() {
		return employeeId;
	}
	
@Override
public String getLocalizedMessage() {
	// TODO Auto-generated method stub
	return super.getLocalizedMessage();
}

}
