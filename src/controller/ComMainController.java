package controller;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;
import model.Component;
import javafx.stage.Stage;

public class ComMainController implements Initializable{
	
	@FXML private TableView<Component> componentTable;
	@FXML private TableColumn<Component, String> ComName;/* = new TableColumn<Component, String>("견종이름");*/
	@FXML private TableColumn<Component, String> ComCode;/* = new TableColumn<Component, String>("나이");*/
	@FXML private TableColumn<Component, Integer> ComCount; /*= new TableColumn<Component, Integer>("마릿수");*/
	@FXML private TableColumn<Component, String> ComPlace; /* = new TableColumn<Component, String>("위치"); */ 
	
	private Main mainapp;
	private Stage PrimaryStage;

	public void setPrimaryStage(Stage PrimaryStage) {
		this.PrimaryStage = PrimaryStage;
	}

	public TableView<Component> getComponentTable() {
		return componentTable;
	}


	public ComMainController() {
		// TODO Auto-generated constructor stub

	}
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		// TODO Auto-generated method stub
		ComName.setCellValueFactory(new PropertyValueFactory<Component, String>("componentName"));
		ComCode.setCellValueFactory(new PropertyValueFactory<Component, String>("componentCode"));
		ComCount.setCellValueFactory(new PropertyValueFactory<Component, Integer>("componentCount"));
		ComPlace.setCellValueFactory(new PropertyValueFactory<Component, String>("componentPlace"));

		
	}

	public void setMain(Main main) {
		this.mainapp = main;
		
		componentTable.setItems(main.getComponentList());
	}
	@FXML
	private void addAction() {		//유기견 추가
		Component component = new Component("", "", 0, "");	//string string int string
		int returnValue = mainapp.setComponentDataView(component);
		if ( returnValue == 1) {
			mainapp.getComponentList().add(component);
		}
	}
	@FXML
	private void editAction() {		//유기견 정보 수정	
		Component component = componentTable.getSelectionModel().getSelectedItem();
		if ( component != null ) {  //선택을 하지 않을시 오류 메시지가 뜸
			mainapp.setComponentDataView(component);
		}
		else {
			Alert alert = new Alert(AlertType.WARNING);
			alert.initOwner(mainapp.getPrimaryStage());
			alert.setTitle("오류 메시지");
			alert.setHeaderText("선택 오류가 발생했습니다.");
			alert.setContentText("수정 항목를 선택해주세요.");
			alert.showAndWait();
		}
	}
	@FXML
	private void deleteActiono() {		//유기견 정보 삭제
		int selectedIndex = componentTable.getSelectionModel().getSelectedIndex();
		if ( selectedIndex >= 0) {		//0보다 작게 쓸 때에도 오류
			componentTable.getItems().remove(selectedIndex);
		}
		else {		//선택을 하지 않을시 뜨는 오류 메시지
			Alert alert = new Alert(AlertType.WARNING);
			alert.initOwner(mainapp.getPrimaryStage());
			alert.setTitle("오류 메시지");
			alert.setHeaderText("선택 오류가 발생했습니다.");
			alert.setContentText("삭제할 항목를 선택해주세요.");
			alert.showAndWait();
		}
		
	}

}