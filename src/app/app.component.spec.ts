import { TestBed } from '@angular/core/testing';
import { RouterTestingModule } from '@angular/router/testing';
import { AppComponent } from './app.component';

describe('AppComponent', () => {
  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [
        RouterTestingModule
      ],
      declarations: [
        AppComponent
      ],
    }).compileComponents();
  });
  it("El título debe ser 'Actions'", async() =>{
    var fixture = TestBed.createComponent(AppComponent);
    var app = fixture.debugElement.componentInstance;
    expect(app.title).toEqual("Actions");
  });
});
